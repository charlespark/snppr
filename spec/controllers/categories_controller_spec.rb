require 'rails_helper'
require 'spec_helper'

RSpec.describe CategoriesController, :type => :controller do
# below are tests for categories_controller.rb

	describe "GET show" do
		before(:each) do
			@category = Category.create(title: 'family')
 			get :show, id: @category
		end

		it "should render a template" do
			expect(response).to render_template(:show)
		end

		it "should return a Category" do
			@category = assigns(:category)
			expect(@category).to be_a(Category)
		end

		it "raises an error if a #Category with an id of 0" do
		    expect { get :show, id: 0 }.to raise_error
		end
	end

	describe "GET new" do

		it "render a template" do
			get :new
			expect(response).to render_template(:new)
		end

		it "should return a form connected to a new category" do
		end

		it "returns http success" do
			get :new
			expect(response).to have_http_status(:success)
		end
	end

	describe "GET edit" do
		before(:each) do
			@category = Category.create(title: 'friends')
			get :edit, id: @category
		end

		it "should render a template" do
			expect(response).to render_template(:edit)
		end

		it "should return a form connected to a category to edit" do
		end
	end

	describe "GET create" do
		before(:each) do
			@category = Category.create(title: 'friends')
			get :edit, id: @category
		end

	    it "returns http success" do
	    	get :create
	    	expect(response).to have_http_status(:success)
	    end
	end

	describe "POST create" do

		context 'valid_attributes' do
			before(:each) do
				Test = User.create(user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555')
				current_user = Test
				post :create, category: { id: 145, title: "Family", created_at: "2014-10-14 04:34:45", updated_at: "2014-10-14 04:34:45" }
			end

			describe "successful create" do
				it "should save the new category to the database" do
					expect(assigns(:category)).to be_a_new(Category)
			end


				# it "should create an entry in the database" do
				# 	expect {
				# 		'valid_attributes'
				# 		}.to change(Category, :count).by(1)
				# end
			end
		end

	# 	context 'invalid_attributes' do
	# 		before(:each) do
	# 			Test = User.create(user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555')
	# 			current_user = Test
	# 			post :create, category: { user_id: current_user.id, title: nil }
	# 		end

	# 	describe "unable to save" do

	# 			it "should not create any new records in the database" do
	# 				expect do
	# 					post :create, category: { user_id: current_user.id, title: nil }
	# 					end.to_not change(Category, :count).by(1)
	# 			end

	# 			it "should rerender the new template" do
	# 				'invalid_attributes'
	# 				expect(response).to render_template :new
	# 	      	end
	# 	    end
	# 	end
	end
end


