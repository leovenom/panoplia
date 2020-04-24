class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @user_shotts  = @user.shotts
  end
end
