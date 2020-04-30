class UsersController < ApplicationController
  before_filter :check_if_logged_in, only: [:show, :edit, :update, :delete]

  def show
    @user = User.find(params[:id])
    @user_shotts  = @user.shotts
  end
end
