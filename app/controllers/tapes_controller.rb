class TapesController < ApplicationController
  def show
  	@tape = Tape.find(params[:id])
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
  		render 'show'
  	else
  		render 'new'
  	end
  end

  private
    def tape_params
    	params.require(:tape).permit(:name)
    end

end
