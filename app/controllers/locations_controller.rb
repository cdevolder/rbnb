class LocationsController < ApplicationController

  before_action :set_location, only: [:show]

  def new
    @location = Location.new
    @developpeur = Developpeur.find(params[:developpeur_id])
  end


  def create
    @developpeur = Developpeur.find(params[:developpeur_id])
    @recruteur = Recruteur.find(current_user.profil.recruteur.id)
    # @recruteur = Recruteur.find(current_user.profil.id)
    @location = Location.new(location_params)
    @location.developpeur = @developpeur
    @location.recruteur = @recruteur
    if @location.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def show
    @message = Message.new
    @location =  Location.find(params[:id])
    @profil = current_user.profil
    @messages = Message.all.where('sender_id=? OR recipient_id=?', @profil.id, @profil.id)
  end

  def destroy
    @location.destroy
    redirect_to developpeurs_path
  end

  private

  def location_params
    params.require(:location).permit(:status, :check_in, :check_out, :recruteur_id, :developpeur_id)
  end

  def set_location
    @location = Location.find(params[:id])
  end
end
