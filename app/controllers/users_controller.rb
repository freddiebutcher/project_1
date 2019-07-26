class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    redirect_to user
  end

  def edit
    @user = User.find params[:id]
    user.update user_params
    redirect_to user
  end

  def show
    @user = User.find params[:id]
  end

  def destroy
    @user = User.find params[:id]
    user.destroy
  end

private
  def user_params
    params.require(:email_address, :password).permit(:username, first_name, last_name, user_bio)
  end

end
