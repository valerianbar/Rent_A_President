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
  private

  def president_params
    params.require(:president).permit(:name, :description, photos: [])
  end
end
