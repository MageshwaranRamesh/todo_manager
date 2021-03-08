class UsersController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def new
    render "users/signup"
  end

  def adduser
    # first_name = params[:first_name]
    # last_name =
    # email = params[:email]
    user = User.create!(first_Name: params[:first_name], last_Name: params[:last_name], email: params[:email], password: params[:password])
    session[:current_user_id] = user.id
    redirect_to "/todos"
  end
end
