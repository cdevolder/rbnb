class ProfilsController < ApplicationController
  def new
    @profil = Profil.new
  end

  def create
    @user = current_user
    @profil = Profil.new(profil_params)
    @profil.user = @user
    @profil.save
    if @profil.save
        redirect_to profil_path(@profil)
    else
      render :new
    end
  end

  def show
    @profil = Profil.find(params[:id])
    @fixbugrecruteur = Profil.find(params[:id]).recruteur
    if (@fixbugrecruteur != nil)
      @x = Profil.find(params[:id]).recruteur.id
      sql = "select * from locations WHERE recruteur_id = #{@x}"
      @locations = ActiveRecord::Base.connection.execute(sql).values
    end

  end

  def edit
    @profil = Profil.find(current_user.profil.id)
  end

  def update
    @profil = Profil.find(current_user.profil.id)
    @profil.update(profil_params)

    if @profil.developpeur
      @profil.developpeur.address = @profil.address
      @profil.developpeur.city = @profil.city
      @profil.developpeur.geocode
      @profil.developpeur.save!
    end

    redirect_to profil_path(@profil)
  end

  def destroy
  end

  def profil_params
    params.require(:profil).permit(:name, :address, :city, :photo, :photo_cache)
  end
end
