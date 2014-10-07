class ImagesController < ApplicationController

  def index
	end

  def new
	end

  def create
    @image = Image.new(params.require(:images_attributes).permit(:link, :alt_text))
	end

  def show
	end

  def edit
	end

  def update
	end

  def destroy
	end

  private

  def image_scrape
    @image_title = 0;
    mechanize = Mechanize.new
    page = mechanize.get('http://www.bing.com/images/searchbyimage?FORM=IRSBIQ&cbir=sbi&imgurl=' + params[:image_url])
    search_img = page./('div.sbi_sp').first./('a').first.attr('href')
    page = page./('div.info').first./('a').first.attr('href')
    page = mechanize.get(page)
    page./('img').each do |i|
      if i.attr('src')
        if i.attr('src').include?(search_img[/.*(?=\..+$)/])
          if i.attr('title')
            @image_title = i.attr('title')
          else
            @image_title = i.attr('alt')
          end
        end
      end
    end
    @image = mechanize.get(params[:image_url])
    
    if @image_title == nil || @image_title == 0 || @image_title.chars.count == 0
      @image_title = @image.filename
    end 
    render :new
  end
end
