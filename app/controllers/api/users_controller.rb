module Api
  class UsersController < ApplicationController
    def index
      @users = User.all
      render json:  @users
    end

    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def create
      @user = User.new(user_params)

      if @user.save
        render json: @user
      else
        render json: @user.errors.to_json, status: 422
      end
    end

    def update
      @user = User.find(params[:id])

      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors.to_json, status: 422
      end

    end

  private
    def user_params
      params.require(:user).permit([
        :firstname,
        :lastname,
        :email,
        :password,
        :password_confirmation
      ])
    end

  end
end
