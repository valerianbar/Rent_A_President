class Owner::BookingsController < ApplicationController
  def accept
    # récupère le booking
    @booking = Booking.find(params[:id])
    # on change le status pour le passer en valider
    @booking.status = "accepted"
    # on sauvegarde
    @booking.save
    # on redirige vers la page de dashboard
    redirect_to owner_dashboards_path
  end

  def decline
    # récupère le booking
    @booking = Booking.find(params[:id])
    # on change le status pour le passer en refuser
    @booking.status = "declined"
    # on sauvegarde
    @booking.save
    # on redirige vers la page de dashboard
    redirect_to owner_dashboards_path
  end
end
