class CategoriesController < ApplicationController
# before_action :set_category, only: [:show, :edit, :update, :destroy]

#Setting the necessary methods for the Categories function in SNPPR.

	def index
	end

	def new
		@category = Category.new
	end

	def create
	  @category = Category.create(category_params)
    @category.user_id = current_user.id	  

    if @category.save
	    redirect_to user_path(current_user)
	  else
	   	render :new
		end
	end

	def show
		@category = Category.find(params[:id])
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		# def set_category
	 #      @category = Category.find(params[:id])
	 #    end

		def category_params
			params.require(:category).permit(:title)
		end

end
