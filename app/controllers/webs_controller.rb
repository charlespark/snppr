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
end
