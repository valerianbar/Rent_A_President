class PresidentsController < ApplicationController
  def index
    @presidents = President.all
  end

  def show
    @president = President.find(params[:id])
    # The `geocoded` scope filters only flats with coordinates
    # @markers = @president.geocode.map do |adress|
    #   {
    #     lat: adress.latitude,
    #     lng: adress.longitude
    #   }
    end
  end
# end
