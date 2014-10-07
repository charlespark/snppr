class WebsController < ApplicationController

  def index
	end

  def new
	end

  def create
    @web = Web.new(params.require(:webs_attributes).permit(:meta_data, :title, :link))
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
  
end
