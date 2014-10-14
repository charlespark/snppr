class Api::UrlsController < ApplicationController
  
  def create
    @url = Url.new(params.require(:url).permit!)
    
    if @url.save
      @url.generate_slug
      respond_to do |format|
          format.js { render 'static_pages/home'} 
          format.html
      end
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
