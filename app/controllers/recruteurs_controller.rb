class RecruteursController < ApplicationController
  def show
    @recruteur = Recruteur.find(params[:id])
  end

  def edit
    @profil = Profil.find(current_user.profil.id)
    @recruteur = Recruteur.find(current_user.profil.recruteur.id)
  end

  def update
    @profil = Profil.find(current_user.profil.id)
    @recruteur = Recruteur.find(current_user.profil.recruteur.id)
    @recruteur.update(recruteur_params)

    redirect_to profil_recruteur_path(@profil, @recruteur)
  end

  def new
    @profil = Profil.find(params[:profil_id])
    @recruteur = Recruteur.new
  end

  def create
    @profil = Profil.find(params[:profil_id])
    @recruteur = Recruteur.new(recruteur_params)
    @recruteur.profil = @profil
    @recruteur.save
    if @recruteur.save
      redirect_to profil_recruteur_path(@profil, @recruteur)
    else
      render :new
    end
  end

  def destroy
  end

  def recruteur_params
    params.require(:recruteur).permit(:description, :profil_id)
  end
end
