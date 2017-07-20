class MembershipsController < ApplicationController
	def new
	  @membership = Membership.new
	end

	def create
	  @membership = Membership.new(membership_params)
	  @tape = @membership.tapes.build
  	  if @membership.save
  	  	raise "saved"
  	    redirect_to tape_path(@tape)
  	  else
  	  	raise @membership.inspect
  	    redirect_to tape_path(@tape)
  	  end
    end

  def membership_params
    params.require(:membership).permit(songs_attributes: [:id], tapes_attributes: [:id])
  end

end
