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
      render "users/signin", local { status :"Incorect password" }
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to "/"
  end
end
