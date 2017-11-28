class LocationsController < ApplicationController

  before_action :set_location, only: [:show]

  def new
    @locations = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @location.destroy
    redirect_to developpeurs_path
  end

  private

  def location_params
    params.require(:location).permit(:status, :check_in, :check_out, :recruteur_id, :developpeur_id )
  end

  def set_location
    @location = Location.find(params[:id])
  end
end
