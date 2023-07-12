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
    response = JSON.parse(get_clime_data(@clime.latitude, @clime.longitude))
    @clime.temperature = response["main"]["temp"]
    @clime.save

    redirect_to clime_path(@clime)
  end

  def show
    @clime = Clime.find(params[:id])
    # raise
  end

  private

  def clime_params
    params.require(:clime).permit(:latitude, :longitude)
  end

  def get_clime_data(latitude, longitude)
    uri = URI("https://api.openweathermap.org/data/2.5/weather?lat=#{latitude}&lon=#{longitude}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")
    Net::HTTP.get(uri)
  end
end
