class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      flash[:success] = "Logged in with #{user.email}"
      redirect_to root_path if current_user
    else
      redirect_to login_path
    end
  end
end
