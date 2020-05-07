class ProfilesController < ApplicationController
  def show
    @shots = User.find_by(user_name:[:user_name]).shots.order('created_at DESC')
  end
end
