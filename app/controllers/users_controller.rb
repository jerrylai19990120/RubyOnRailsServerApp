class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:username])
  end

  def getUser
    @user = User.find(params[:id=>1])
    render json: @user
  end

end
