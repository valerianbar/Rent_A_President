class PresidentsController < ApplicationController
  def index
    @presidents = President.all
  end

  def show
  end
end
