class UsersController < ApplicationController
  def new
    render "users/signup"
  end

  def adduser
    # first_name = params[:first_name]
    # last_name =
    # email = params[:email]
    User.create!(first_Name: params[:first_name], last_Name: params[:last_name], email: params[:email], password: params[:password])
    redirect_to "/"
  end
end
