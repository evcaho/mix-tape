class MembershipsController < ApplicationController
	def new
	  @membership = Membership.new
	end

  def show
    @membershu
  end

	def create
	  @membership = Membership.new(membership_params)
	  @tape = Tape.find(params[:membership][:tape_id])
  	  if @membership.save
  	    redirect_to tape_path(@tape)
  	  else
  	    redirect_to tape_path(@tape)
  	  end
    end

  def destroy
    @membership = Membership.find(params[:id])
    @tape = @membership.tape_id
    @membership.destroy
    redirect_to tape_path(@tape)
  end

  def membership_params
    params.require(:membership).permit(:song_id, :tape_id)
  end

end
