class SessionsController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def new
    render "users/signin"
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to "/todos"
    else
      flash[:error] = "Invalid user name and password! "
      redirect_to new_session_path
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to "/"
  end
end
