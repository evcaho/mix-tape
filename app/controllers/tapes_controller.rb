class TapesController < ApplicationController
  def show
  	@tape = Tape.find(params[:id])
    @song = @tape.songs.build
    @membership = @tape.memberships.build
  end

  def index
  	@tapes = Tape.all
  end

  def new
  	@tape = Tape.new
  end

  def create
  	@tape = Tape.new(tape_params)
  	if @tape.save
  		redirect_to @tape
  	else
  		render 'new'
  	end
  end

  def update
    @tape = Tape.find(params[:id])
    if @tape.save
      redirect_to @tape
    else
      render 'new'
    end
  end

  def find_membership
  end

  def destroy
    @tape = Tape.find(params[:id])
    @tape.destroy
    respond_to do |format|
      format.html { redirect_to tapes_url, notice: 'Tape was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def tape_params
    	params.require(:tape).permit(:name, songs_attributes: [:id, :title, :artist])
    end

end
