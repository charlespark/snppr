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
				# Test = User.create(user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555')
				# current_user = Test
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


  #     let :invalid_attributes do
  #       {
  #         :flavor => nil,
  #         :quantity => nil,
  #         :topping => nil
  #       }
  #     end

  #     it "should not create any new records in the database" do
  #       expect do
  #         post :create, yogurt: invalid_attributes
  #       end.to_not change(Yogurt, :count).by(1)
  #     end

  #     it "should rerender the new template" do
  #       post :create, yogurt: invalid_attributes
  #       expect(response).to render_template :new
  #     end
  #   end
  # end



# 		#9
# 		#it "should know what valid attributes are for a yogurt are and are not"

# 	describe "GET create" do

# 		#10
# 		#if valid attributes, it "should save the new yogurt to the database"
# 		context 'valid attributes' do
# 		before(:each) do
# 			post :create, yogurt: { flavor: 'original', topping: 'coconut', quantity: 3 }
# 		end
# 		it "should save the new yogurt to the database" do
# 			expect(assigns(:yogurt)).to be_a_new(Yogurt)			
# 		end
# 	end

# 		#11
# 		#if valid attributes, it "should redirect me to index after saving (sequential from #10)"

# 		#12
# 		#if invalid attributes, it "should NOT save the new yogurt record"

# 		#13
# 		#if invalid attributes, it "should redirect to the new view after a failed save (sequential from #12)"

# 		#14
# 		#if valid attributes, it "should save the updated yogurt record to the database"

# 		#15
# 		#if valid attributes, it "should redirect me to index after a successful save (sequential from #14)"

# 		#16
# 		#if invalid attributes, it "should NOT save the edited yogurt record"

# 		#17
# 		#if invalid attributes, it "should redirect to the Edit view (sequential from #16)"
# 	end

# 	describe "GET destroy" do
# 		#18
# 		it "should delete the selected yogurt" do
# 		end

# 		#19
# 		it "should redirect me to the index" do
# 		end
# 	end




# #    describe "GET update" do
# #      it "returns http success" do
# #        get :update
# #        expect(response).to have_http_status(:success)
# #      end
# #    end

# #    describe "GET destroy" do
# #      it "returns http success" do
# #        get :destroy
# #        expect(response).to have_http_status(:success)
# #      end
# #    end

# #    describe "GET edit" do
# #      it "returns http success" do
# #        get :edit
# #        expect(response).to have_http_status(:success)
# #      end
# #    end

# # end

# end


			# it "should save the category to the database" do
			# 	expect(assigns(:category)).to be_a_new(Category)
			# end

			# it "should be a string" do
			# 	expect {
			# 		'valid_attributes'
			# 	}.to 



  #     it "should redirect to the index page for yogurts" do
  #       post :create, yogurt: valid_attributes
  #       expect(response).to redirect_to yogurts_path
  #     end
  #   end

  #   describe "unable to save" do
  #     let :invalid_attributes do
  #       {
  #         :flavor => nil,
  #         :quantity => nil,
  #         :topping => nil
  #       }
  #     end

  #     it "should not create any new records in the database" do
  #       expect do
  #         post :create, yogurt: invalid_attributes
  #       end.to_not change(Yogurt, :count).by(1)
  #     end

  #     it "should rerender the new template" do
  #       post :create, yogurt: invalid_attributes
  #       expect(response).to render_template :new
  #     end
  #   end
  # end



#  My own notes

		# it "should render the index template" do
		# 	expect(response).to render_template(:index)
		# end

		# it "should return a list of saved links" do
		# 	get :index
		# 	@links = assigns :links
		# 	expect(@links).to match_array(Links.all)
		# 	#find the term to call for personalized links
		# end
	# end


# # is this a model or a controller spec test case?
# 		it "should be able to create and populate categories" do
# 			expect(@default).to create_custom_categories
# 		end

# #IF NOT LOGGED IN
# 		it "should be able to use functionality as a guest" do
# 			expect to have input and output functionality as a guest
# 		end
# 	end
# end


	# describe "GET 'index'" do

	# 	it "returns http success" do
	# 		get 'index'
	# 		response.should be_success
	# 	end
	# end

	# 	it "should render a template" do
	# 		get :index
	# 		expect(response).to render_template(:index)
	# 	end

	# 	it "should return a list of Categories" do
	# 		get :index
	# 		@categories = assigns(:categories)
	# 		expect(@categories).to match_array(Category.all)
	# 	end
	# end
