class DancesController < ApplicationController
  def index
    @dances = Dance.all  # Get all the dances
  end

  def show
    @dance = Dance.find(params[:id])  # Find a dance by ID
  end
end
