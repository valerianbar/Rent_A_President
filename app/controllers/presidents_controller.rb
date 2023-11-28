class PresidentsController < ApplicationController
  def index
  end

  def show
    @president = President.find(params[:id])
  end
end
