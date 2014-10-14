require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET destroy" do
    it "returns http redirect" do
      get :destroy  
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "GET update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE 'destroy'" do
    it "should log the user out" do
      @user = User.create(user_name: 'happy', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555')
      delete :destroy, id: @user
      expect(response).to redirect_to root_url
      # controller.current_user.should be_nil
      # controller.should_not be_signed_in
    end 
  end

end
