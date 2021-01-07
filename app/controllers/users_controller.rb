class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:username])
  end

  def test
    render :string=>"test route"
  end

end
