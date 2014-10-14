require 'rails_helper'

RSpec.describe UsersController, :type => :controller do


# below are tests for the controller_spec page
	# describe "GET index" do
	# 	it "should succeed" do
	# 		expect(response).to be_success
	# 	end
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

	describe "POST create" do

		# context 'valid_attributes' do
		# 	before(:each) do
		# 		post :create, user: { user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555' }
		# 	end
			# describe "successful create" do

				it "should create a user in the database" do
					expect {
						post :create, user: { user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555' }
					}.to change(User,:count).by(1)
				end
		# end
	end		
end

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
