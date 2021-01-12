class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:username])
    render json: @user
  end

  def create
    @user = User.new(username:params[:username], password:[:password])
    @user.save
    render json: @user
  end

end
