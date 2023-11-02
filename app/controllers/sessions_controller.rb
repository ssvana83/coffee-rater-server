class SessionsController < ApplicationController
  skip_before_action :authorized!, only: [:create]

  def create                                                            # This is for user to signin
    user = User.find_by(email: params[:email])
    if user && user.authenicate(params[:password])
      session[:user_id] = user.id
      render json: user
    else
      render json: { error: "Invalid username or password" }, status: :unauthorized
    end
  end


  def destroy                                                          # This is for user to signout
    session.clear
  end

end
