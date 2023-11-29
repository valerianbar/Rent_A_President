class PresidentsController < ApplicationController
  def index
    @presidents = President.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @president.geocoded.map do |adress|
      {
        lat: adress.latitude,
        lng: adress.longitude
      }
    end
  end
  
  def show
    @president = President.find(params[:id])
  end
end
