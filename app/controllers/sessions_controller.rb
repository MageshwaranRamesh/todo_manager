class SessionsController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def new
    render "users/signin"
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      render plain: "corret password"
    else
      render plain: "Incorrect password"
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to "/"
  end
end
