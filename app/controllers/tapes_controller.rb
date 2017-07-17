class TapesController < ApplicationController
  def index
  	@tapes = Tape.all
  end

  def new
  	@tape = Tape.new
  end

end
