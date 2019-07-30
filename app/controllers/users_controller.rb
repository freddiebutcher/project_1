class UsersController < ApplicationController
  before_action :check_for_login, :only => [:index, :edit, :update, :following, :followers]
  # before_action :check_for_admin, :only => [:index]

def index
  @users = User.all
end

def new
  @user = User.new
end

def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
    redirect_to root_path
  else
    render :new
  end
end

def edit
  @user = @current_user
end

def update
  @current_user.update user_params
  redirect_to user
end

def show
  @user = User.find params[:id]
end

def destroy
  user = User.find params[:id]
  user.destroy
  redirect_to users_path
end

def following
  @title = "Following"
  @user  = User.find(params[:id])
  @users = @user.following.paginate(page: params[:page])
  render 'show_follow'
end

def followers
  @title = "Followers"
  @user  = User.find(params[:id])
  # @users = @user.followers.paginate(page: params[:page])
  render 'show_follow'
end

private
def user_params
  params.require(:user).permit(:email_address, :password, :password_confirmation, :username, :first_name, :last_name, :user_bio)
end

end
