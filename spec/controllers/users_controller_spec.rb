require 'rails_helper'

RSpec.describe UsersController, :type => :controller do


# below are tests for the controller_spec page
	describe "GET index" do
		it "should succeed" do
			expect(response).to be_success
		end

		# it "should render the index template" do
		# 	expect(response).to render_template(:index)
		# end
	end

	describe "GET show" do
		before(:each) do
			@user = User.create(user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555')
 			get :show, id: User.create
		end

		it "should render a template" do
			expect(response).to render_template(:show)
		end

		it "should return a User" do
			@user = assigns(:user)
			expect(@user).to be_a(User)
		end
	end

	describe "POST create" do
		context 'valid_attributes' do
			before(:each) do
				post :create, user: { user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555' }
			end
			
			describe "successful create" do
				it "should save the new user to the database" do
					expect(assigns(:user)).to be_a_new(User)
				end
			end
		end
	end

	# describe "PATCH update" do
	# 	before(:each) do
	# 		@user = User.create(user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555')
 	# 		patch :update, id: @user
	# 	end

	# 	it "located the requested @testrequest" do
	# 	    patch :update, edit_id: @testrequest.edit_id, request: FactoryGirl.attributes_for(:request)
	# 	    assigns(:request).should eq(@testrequest)
	# 	end

	# describe "using valid data" do

	#     it "updates the request" do
	#         patch :update, edit_id: @testrequest.edit_id, request: FactoryGirl.attributes_for(:request, name: "Larry Johnson")
	#         @testrequest.reload
	#         @testrequest.name.should eq("Larry Johnson")
	#     end
	# end
	# end
end


















# it "should create a user in the database" do
# 	expect {
# 		post :create, user: { user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555' }
# 	}.to change(User,:count).by(1)
