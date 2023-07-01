class ClimesController < ApplicationController
  def index
  end

  def new
    @clime = Clime.new
  end

  def create
    @clime = Clime.new(clime_params)
    results = Geocoder.search([@clime.latitude, @clime.longitude])
    @clime.country = results.first.country
    @clime.city = results.first.city
    @clime.street = results.first.street
    @clime.save
    #use geocoder gem to get geographical information
    #use openweather API to get current temperature
  end

  def show

  end

  private

  def clime_params
    params.require(:clime).permit(:latitude, :longitude)
  end

  def get_clime_data(latitude, longitude)
    
  end
end
