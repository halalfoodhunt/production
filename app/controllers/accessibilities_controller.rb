class AccessibilitiesController < ApplicationController
    before_action :authenticate_friend!
	before_action :set_accessibility, only: [:edit, :update, :destroy]

	def edit
		@place = @accessibility.place
	end

	def create
		@accessibility = current_friend.accessibilities.new(accessibility_params)

		respond_to do |format|
			if @accessibility.save
				format.html { redirect_to place_path(@accessibility.place), notice: 'Accessibility rating was successfully created.' }
			else
				format.html { redirect_to place_path(@accessibility.place), notice: "Something went wrong" }
			end
		end
	end

	def update
		respond_to do |format|
			if @accessibility.update(accessibility_params)
				format.html { redirect_to place_path(@accessibility.place), notice: 'Accessibility rating was successfully updated.' }
			else
				format.html { redirect_to place_path(@accessibility.place), notice: "Something went wrong" }
			end
		end
	end

	def destroy
		@accessibility.destroy
		respond_to do |format|
			format.html { redirect_to place_path(@accessibility.place), notice: 'Accessibility rating was successfully destroyed.' }
		end
	end

	private

	def set_accessibility
		@accessibility = Accessibility.find(params[:id])
	end

	def accessibility_params
		params.require(:accessibility).permit(:name, :place_id, :score)
	end
end
