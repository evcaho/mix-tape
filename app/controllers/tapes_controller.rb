class TapesController < ApplicationController
  def show
  	@tape = Tape.find(params[:id])
    @song = @tape.songs.build
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

  private
    def tape_params
    	params.require(:tape).permit(:name, songs_attributes: [:id, :title, :artist])
    end

end
