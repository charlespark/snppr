class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to(user_path(current_user))
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def index
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def update
  end

end
