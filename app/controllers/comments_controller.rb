class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
  	@shott = Shott.find(params[:shott_id]) # finds the shott with the associated shott_id
  	@comment = @shott.comments.create(comment_params) # creates the comment on the shott passing in params 
  	@comment.user_id = current_user.id if current_user # assigns logged in user's ID to comment
  	@comment.save!

  	redirect_to shott_path(@shott)

  end

  def destroy
  	@shott = Shott.find(params[:shott_id])
  	@comment = @shott.comments.find(params[:id])
  	@comment.destroy
  	redirect_to shott_path(@shott)
  end

  private

  def comment_params 
  	params.require(:comment).permit(:name, :response)
  end
end
