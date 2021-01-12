class UsersController < ApplicationController
  def index
    @user = User.all()
    render json: @user
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
