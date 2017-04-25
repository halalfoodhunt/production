class CommentsController < ApplicationController
    before_action :authenticate_friend!
    
    def create
		@place = Place.find(params[:place_id])
		@current_friend = current_friend
		@comment = @place.comments.create(params[:comment].permit(:content))

		redirect_to place_path(@place)
	end

	def destroy
		@place = Place.find(params[:place_id])
		@comment = @place.comments.find(params[:id])
		@comment.destroy

		redirect_to place_path(@place)
	end
end
