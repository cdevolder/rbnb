class DeveloppeursController < ApplicationController
  def create
    @profil = Profil.find(params[:profil_id])
    @developpeur = Developpeur.new(developpeur_params)
    @developpeur.profil = @profil
    @developpeur.save
    if @developpeur.save
      redirect_to profil_developpeur_path(@profil, @developpeur)
    else
      render :new
    end
  end


  def index
    @developpeurs = Developpeur.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@developpeurs) do |developpeur, marker|
      marker.lat developpeur.latitude
      marker.lng developpeur.longitude
      # marker.infowindow render_to_string(partial: "/developpeurs/map_box", locals: { developpeur: developpeur })
    end
  end

  def edit
    @profil = Profil.find(current_user.profil.id)
    @developpeur = Developpeur.find(current_user.profil.developpeur.id)
  end

  def update
    @profil = Profil.find(current_user.profil.id)
    @developpeur = Developpeur.find(current_user.profil.developpeur.id)
    @developpeur.update(developpeur_params)

    redirect_to profil_developpeur_path(@profil, @developpeur)
  end

  def show
    @developpeur = Developpeur.find(params[:profil_id])
    @developpeur_coordinates = { lat: @developpeur.latitude, lng: @developpeur.longitude }
  end

  def new
    @profil = Profil.find(params[:profil_id])
    @developpeur = Developpeur.new
  end

   def developpeur_params
    params.require(:developpeur).permit(:description, :available ,:profil_id, :price, :address, :city)
  end
end
