class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def scrape_data(url)
    mechanize = Mechanize.new
    page = mechanize.get(url)
    if page.at("head meta[name='description']") || page.at("head meta[name='Description']")
      if page.at("head meta[name='description']")
        meta = page.at("head meta[name='description']").attributes["content"].value
      else
        meta = page.at("head meta[name='Description']").attributes["content"].value
      end  
    else
      "No Meta Data Provided"
    end
  end
  
  def scrape_title(url)
    mechanize = Mechanize.new
    page = mechanize.get(url)
    page.title
  end
  
  def image_scrape(url)
    @image_title = 0;
    mechanize = Mechanize.new
    page = mechanize.get('http://www.bing.com/images/searchbyimage?FORM=IRSBIQ&cbir=sbi&imgurl=' + url)
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
    @image_title
  end
end
