class BookingsController < ApplicationController
  def create
    string_dates = params[:booking][:start_date].split(" to ")
    start_date = Date.parse(string_dates[0])
    end_date = Date.parse(string_dates[1])
    @booking = Booking.new(start_date: start_date, end_date: end_date)
    @booking.user = current_user
    @booking.president = President.find(params[:president_id])
    raise
    if @booking.save
      redirect_to president_path(@booking.president)
    else
      render 'presidents/show', status: :unprocessable_entity
    end
  end
end
