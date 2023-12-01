class Owner::PresidentsController < ApplicationController
  def new
    @president = President.new
  end

  def create
    @president = President.new(president_params)
    @president.user = current_user
    if @president.save
      redirect_to presidents_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def book_president
    @president = President.find(params[:id])
    @booking = Booking.new(president: @president, user: current_user)

    if @booking.save
      @president.update(status: "pending")
      redirect_to president_path(@president), notice: "Waiting for validation. You will receive an email soon"
    else
      render :show
    end
  end
  private

  def president_params
    params.require(:president).permit(:name, :description, photos: [])
  end
end
