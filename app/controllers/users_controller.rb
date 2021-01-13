class UsersController < ApplicationController
  def index
    render json: User.all
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
    @user = User.find(params[:id])
    if @user.delete
      render json: @user
    end
  end


end
