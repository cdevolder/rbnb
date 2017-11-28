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
    @developpeurs = Developpeur.all
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
    @developpeur = Developpeur.find(params[:id])
  end

  def new
    @profil = Profil.find(params[:profil_id])
    @developpeur = Developpeur.new
  end

   def developpeur_params
    params.require(:developpeur).permit(:description, :available ,:profil_id)
  end
end
