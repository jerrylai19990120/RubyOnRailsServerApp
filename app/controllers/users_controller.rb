class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:username])
  end

  def getUser
    @user = User.new(username:'me', password:'123456')
    render :json=> @user
  end

end
