class PresidentsController < ApplicationController
  def index
    @presidents = President.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @presidents.geocoded.map do |adress|
      {
        lat: adress.latitude,
        lng: adress.longitude
      }
    end
  end

  def show
    # @presidents = President.all
    @president = President.find(params[:id])
    # The `geocoded` scope filters only flats with coordinates

    @marker =[
      {
        lat: @president.latitude,
        lng: @president.longitude
    }]

    @booking = Booking.new
  end
end
