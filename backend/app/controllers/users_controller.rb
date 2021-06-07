class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def new
    user = User.new
  end

  def create
      user = User.find_or_create_by(email: params[:user][:email])
      if user
          render json: user, except: [:created_at, :updated_at]
      else
          render json: {message: "Signup Failed"}
      end
  end

  def show
      user = User.find_by(id: params[:id])
          if user
          render json: user, except: [:created_at, :updated_at]
      else
          render json: {message: "User not found."}
      end
  end

private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end