class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      log_in @user
      flash[:success] = "Welcome to the Snppr App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
  end

  def destroy
  end

   def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
       flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
    debugger
  end

  def edit
      @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:full_name, :email, :password,
                                   :password_confirmation)
    end
end

#user = User.new(full_name: "Foo Bar", email: "foo@invalid",password: "dude", password_confirmation: "dude")
