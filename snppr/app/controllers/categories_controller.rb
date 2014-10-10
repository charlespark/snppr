class CategoriesController < ApplicationController

	def index
	end

	def new
		@category = Category.new
	end

	def create
	   	@category = Category.create(category_params)
	   	if @category.save
	   		redirect_to user_path(current_user)
	   		else
	   			render :new
		end
	end

	def show
		@category = Category.find_by(params[:id])
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def category_params
		params.require(:category).permit(:title)
	end

end