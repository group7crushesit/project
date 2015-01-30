class UsersController < ApplicationController
  before_action :logged_in?, only: [:show]
  
  def new
    @user = User.new
  end

  def show
    # @posts = current_user.Board.order(created_at: :desc)
  end

  def edit
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to user_path(@user.id)
  end

  def user_profile

  end

  def update
  end

  def destroy
  end

private

      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
      end
end
