class UsersController < ApplicationController
  before_action :logged_in?, only: [:show]

  def index 
    
  end

  
  def new
    @user = User.new
  end

  # def show
  #   @post = Board.find_by({id: params[:id}).order(created_at: :desc)
  # end

  def show
    @user_posts = current_user.boards
  end

  def edit
    @user = User.find_by({id: params[:id]})
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to user_path(@user.id)
  end

  def update
    user = current_user
    @user = current_user.update_attributes(first_name: params[:first_name],
      last_name: params[:last_name],
      location: params[:location],
      linkedin_url: params[:linkedin_url],
      github_url: params[:github_url],
      dribbble_url: params[:dribbble_url],
      behance_url: params[:behance_url],
      website_url: params[:website_url],
      bio: params[:bio],
      student: params[:student],
      ga_staff: params[:ga_staff],
      outsider: params[:outsider])
    if @user
      redirect_to profile_path
    else
      redirect_to edit_user_path(current_user)
    end
  end

  def destroy
  end

private

      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :location, :linkedin_url, :github_url, :dribbble_url, :behance_url, :website_url, :bio, :student, :ga_stuff, :outsider )
      end
end
