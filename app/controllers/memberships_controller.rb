class MembershipsController < ApplicationController
	def new
	  @membership = Membership.new
	end

	def create
	  @membership = Membership.new(membership_params)
  	  @song = Song.find(params[:id])
  	  @tape = Tape.find(params[:song][:tape_id])
  	if @membership.save
  		@tape.songs << @song
  		redirect_to tape_path(@tape)
  	else
  		redirect_to tape_path(@tape)
  	end
  end

  def membership_params
    	params.require(:membership).permit(:id, songs_attributes: [:id], tapes_attributes: [:id])
  end

end
