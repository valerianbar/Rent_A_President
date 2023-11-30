

class PresidentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @presidents = President.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @presidents.geocoded.map do |adress|
      {
        lat: adress.latitude,
        lng: adress.longitude,
        info_window_html: render_to_string(partial: "presidents/info_window", locals: { president: adress }),
        marker_html: render_to_string(partial: "presidents/marker")
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
        lng: @president.longitude,
        info_window_html: render_to_string(partial: "presidents/info_window", locals: { president: @president }),
        marker_html: render_to_string(partial: "presidents/marker")
    }]

    @booking = Booking.new
  end
end
