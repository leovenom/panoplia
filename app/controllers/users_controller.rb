class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_shotts  = @user.shotts
  end

  def index
  end

  def edit
  end

  def create
  end
end
