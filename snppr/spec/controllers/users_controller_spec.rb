require 'rails_helper'

RSpec.describe UsersController, :type => :controller do


# below are tests for the controller_spec page
	describe "GET index" do
		it "returns http success" do
			get :index
			expect(response).to have_http_status(:success)
		end

		it "should render an account page" do
			get :index
			expect(response).to render_template(:index)
		end

		it "should return a list of saved links" do
			get :index
			@links = assigns :links
			expect(@links).to match_array(Links.all)
			#find the term to call for personalized links
		end
	end


describe "GET show" do

# is this a model or a controller spec test case?
		it "should be able to create and populate categories" do
			expect(@default).to create_custom_categories
		end

#IF NOT LOGGED IN
		it "should be able to use functionality as a guest" do
			expect to have input and output functionality as a guest
		end
	end
end
