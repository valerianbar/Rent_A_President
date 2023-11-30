class Owner::DashboardsController < ApplicationController
  def show
    @my_presidents = President.where(user: current_user)
    @my_bookings = Booking.where(user: current_user)
    @bookings_of_my_presidents = Booking.includes(:president).where(presidents: { user: current_user })
  end
end
