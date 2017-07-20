
class SongsController < ApplicationController
  def index
  	@songs = Song.all
  end

  def new
  	@song = Song.new
  end

  def create
  	@song.id = Song.new(song_params)
  	@tape = Tape.find(params[:song][:tape_id])
  	if @song.save
  		@tape.songs << @song
  		redirect_to tape_path(@tape)
  	else
  		render 'new'
  	end
  end

  private
    def song_params
    	params.require(:song).permit(:title, :artist)
    end

end
