class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_shots  = @user.shots
  end

  def index
  end

  def edit
  end

  def create
  end
end
