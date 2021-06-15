class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def new
    user = User.new
  end

  def create
      user = User.find_by(email: params[:user][:email])
      if user
          if user.authenticate(params[:user][:password])
            render json: user, except: [:created_at, :updated_at]
          else
            render json: {message: "Invalid Username/Password", errors: user.errors}
          end
      else
          user = User.new(user_params)
          if user.save
            render json: user, except: [:created_at, :updated_at]
          else
            render json: {message: "Signup Failed", errors: user.errors}
          end
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