class ClimesController < ApplicationController
  def index
  end

  def new
    @clime = Clime.new
  end

  def create
    @clime = Clime.new(clime_params)
  end

  private

  def clime_params
    params.require(:clime).permit(:latitude, :longitude)
  end

  def get_clime_data
    #api call
  end
end
