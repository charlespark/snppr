require 'rails_helper'

RSpec.describe CategoriesController, :type => :controller do


# below are tests for categories_controller.rb
describe "POST create" do

	context 'valid_attributes' do
		before(:each) do
			Test = User.create(user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555')
			current_user = Test
			post :create, category: { user_id: current_user.id, title: 'Family' }
		end



		describe "successful create" do

			it "should create an entry in the database" do
				expect (Category.count).to eq(1)
			end
		end
	end
end
# 	context 'invalid_attributes' do
# 		before(:each) do
# 			post :create, category: { title: nil }
# 		end

# 		describe "unable to save" do

# 			it "should not create an id in the database" do
# 				expect {
# 					'invalid_attributes'
# 					}.to_not change(Category,:count).by(1)
# 			end

# 			it "should rerender the new template" do
# 				'invalid_attributes'
# 				expect(response).to render_template :new
# 	      	end
# 	    end
# 	end
# end
end			
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


# describe "GET show" do

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



# {
# 					'valid_attributes'
# 				}.to change(Category,:count).by(1)

