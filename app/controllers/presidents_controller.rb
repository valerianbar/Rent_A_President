class PresidentsController < ApplicationController
  def index
    @presidents = President.all
  end

  def show
    @president = President.find(params[:id])
  end
end
