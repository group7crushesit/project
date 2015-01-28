class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def edit
  end

  def create
    user_params = params.require(:user)
    user = User.confirm(user_params[:email], user_params[:password])
    if user
      login(user)
      redirect_to user_path(user.id)
    else
      flash[:error] = "Nope. Try again."
      redirect_to "/login"
    end

  end

  def update
  end

  def destroy
    logout
    flash[:error] = "You've successfully logged out"
    redirect_to login_path
  end

end
