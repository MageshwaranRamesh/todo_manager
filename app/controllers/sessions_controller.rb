class SessionsController < ApplicationController
  def new
    render "users/signin"
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render plain: "corret password"
    else
      render plain: "Incoorect password"
    end
  end
end
