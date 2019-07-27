class SessionController < ApplicationController

  def new

  end

  def create
    user = User.find_by :email_address => params[:email_address]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "User created!"
      redirect_to root_path
    else
      flash[:error] = 'User could not be created!'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
