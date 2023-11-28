class Owner::PresidentsController < ApplicationController
  def new
    @president = President.new
  end

  def create
    @president = President.new(president_params)
    @president.user = current_user
    if @president.save
      redirect_to owner_president_path(@president)
    else
      render :new, status: :unprocessable_entity
    end
  end
  private
  
  def president_params
    params.require(:president).permit(:name, :description)
  end
end
