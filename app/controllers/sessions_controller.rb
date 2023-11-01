class SessionsController < ApplicationController
  skip_before_action :authorized!, only: [:create]

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenicate(params[:password])
      session[:user_id] = user.id
      render json: user
    else
      render json: { error: "Invalid username or password" }, status: :unauthorized
    end
  end


  def destroy
    session.clear
  end

end
