class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  #Using the mechanize gem, this method scrapes the meta data off of a website, with the URL as the input.
  def scrape_data(url)
    mechanize = Mechanize.new
    page = mechanize.get(url)
    if page.filename
      return nil
    end
    
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
  
  #Using the mechanize gem, this scrape_title method grabs the title of the webpage, with the URL as the input.
  def scrape_title(url)
    mechanize = Mechanize.new
    page = mechanize.get(url)
    if page.filename
      return nil
    end
    page.title 
  end
 
  #Using the mechanize gem, this image_scrape method takes the image URL, opens up bing image search, re-searches the image URL, grabs the first webpage that hosts the image, and grab the alt_text of the image.
  def image_scrape(url)
    @image_title = 0;
    mechanize = Mechanize.new
    page = mechanize.get('http://www.bing.com/images/searchbyimage?FORM=IRSBIQ&cbir=sbi&imgurl=' + url)
    if page./('div.sbi_sp')
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
    end
    
    if @image_title == nil || @image_title == 0 || @image_title.chars.count == 0
      @image_title = @image.filename
    end
    @image_title
  end
end
