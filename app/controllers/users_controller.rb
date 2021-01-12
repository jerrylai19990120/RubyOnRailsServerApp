class UsersController < ApplicationController
  def index
    @users = User.all()
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(username:params[:username], password:params[:password])
    @user.save
    render json: @user
  end

  def delete

  end


end
