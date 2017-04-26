class CommentsController < ApplicationController
    before_action :authenticate_friend!
    
    def create
		@place = Place.friendly.find(params[:place_id])
		@comment = @place.comments.create(params[:comment].permit(:content, :place_id, :friend_id))
		@comment.friend_id = current_friend.id
		@comment.save

		redirect_to place_path(@place)
	end

	def destroy
		@place = Place.friendly.find(params[:place_id])
		@comment = @place.comments.find(params[:id])
		@comment.destroy

		redirect_to place_path(@place)
	end
end
