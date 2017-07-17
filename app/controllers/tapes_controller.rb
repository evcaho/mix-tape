class TapesController < ApplicationController
  def index
  	@tapes = Tape.all
  end
end
