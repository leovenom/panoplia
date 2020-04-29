class ProfilesController < ApplicationController
  def show
    @shotts = User.find_by(user_name:[:user_name]).shotts.order('created_at DESC')
  end
end
