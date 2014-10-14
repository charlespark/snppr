class CategoriesController < ApplicationController
# before_action :set_category, only: [:show, :edit, :update, :destroy]

	def index
	end

	def new
		@category = Category.new
	end

	def create
<<<<<<< HEAD:snppr/app/controllers/categories_controller.rb
	   	@category = Category.create(category_params)
	   	if @category.save
	   		redirect_to users_path(current_user)
	   		else
	   			render :new
=======
	  @category = Category.create(category_params)
    @category.user_id = current_user.id	  

    if @category.save
	    redirect_to user_path(current_user)
	  else
	   	render :new
>>>>>>> 8ed7b4febd27da387047b394ba484d10178e3e8e:app/controllers/categories_controller.rb
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
