class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	 @user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	@user.save
    redirect_to new_user_path
  end

  def show
  	@user = current_user
  end

  private

   def user_params
     params.require(:user).permit(:name, :email, :password, :password_confirmation, :remember_me, :avatar, :member, :region, :profile)
   end
end
