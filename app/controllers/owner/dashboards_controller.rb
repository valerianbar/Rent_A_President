class Owner::DashboardsController < ApplicationController
  def show
    @my_presidents = President.where(user: current_user)
    @my_bookings = Booking.where(user: current_user)
    # @bookings_of_my_presidents = Booking.where
  end
end

# une div pour mes réservations que j'ai faites
# une div pour les réservations de mes présidents
# une div pour mes présidents
