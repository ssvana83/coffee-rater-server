class UsersController < ApplicationController
  skip_before_action :authorized!, only: [:create]

  def index
    user = User.all
    render json: user   #, include: :reviews
  end

  def create
    user = User.create(user_params)                         # this is the moment the user is created
    if user.valid?
      session[:user_id] = user.id                           # this is where the session is added to the user
      render json: user, status: :created                   # which is the point that the user signs in
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end


  def show                                                # This will GET current user
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "Not Authorized" }, status: :unauthorized
    end
  end


  private
  def user_params
    params.permit(:username, :email, :password, :password_confirmation)
  end

end
