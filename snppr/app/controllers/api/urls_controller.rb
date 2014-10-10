class Api::UrlsController < ApplicationController
  
  def create
    @url = Url.new(params.require(:url).permit(:title, images_attributes:[:link, :id], webs_attributes:[:link, :id], personals_attributes:[:image_title, :image_alt_text]))
     
    if @url.save      
      @url.generate_slug
      redirect_to url_path(@url.slug)
    else
      render :new
    end
	end

  def show
    @url = Url.find_by(slug: params[:id])
    
    @url.images.each do |i|
      if i.alt_text == nil
        i.alt_text = image_scrape(i.link)
        i.save
      end
    end
    @url.webs.each do |w|
      if w.title == nil && w.meta_data == nil
        w.title = scrape_title(w.link)
        w.meta_data = scrape_data(w.link)
        w.save
      end
    end
    @url_list = @url.images.to_a + @url.webs.to_a + @url.personals.to_a
    
    respond_to do |format|
      format.json { 
        render :json => { 
          :url => @url,
          :images => @url.images,
          :webpages => @url.webs,
          :personal_photos => @url.personals,
          :url_list => @url_list
      }}
    end
	end
end
