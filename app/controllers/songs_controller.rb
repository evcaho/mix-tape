
class SongsController < ApplicationController
  def index
  	@songs = Song.all
  end

  def show
  	@song = Song.find(params[:id])
    @tape = @song.tapes.build
    @membership = @song.memberships.build
  end

  def new
  	@song = Song.new
  end

  def create
  	@song = Song.new(song_params)
  	@tape = Tape.find(params[:song][:tape_id])
  	if @song.save
  		@tape.songs << @song
  		redirect_to tape_path(@tape)
  	else
  		render 'new'
  	end
  end

  def destroy
  	@song = Song.find(params[:id])
  	@song.destroy
  	respond_to do |format|
      format.html { redirect_to songs_url, notice: 'Song was successfully destroyed.' }
      format.json { head :no_content }
  	end
  end

  private
    def song_params
    	params.require(:song).permit(:title, :artist)
    end

end
