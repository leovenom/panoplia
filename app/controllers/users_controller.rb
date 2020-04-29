class UsersController < ApplicationController
  before_action only: :show
  def show
    @user = User.find(params[:id])
    @user_shotts  = @user.shotts
  end
end
