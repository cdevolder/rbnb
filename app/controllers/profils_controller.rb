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
    @x = Profil.find(params[:id]).recruteur.id
    sql = "select * from locations WHERE recruteur_id = #{@x}"
    @locations = ActiveRecord::Base.connection.execute(sql).values
  end

  def edit
    @profil = Profil.find(current_user.profil.id)
  end

  def update
    @profil = Profil.find(current_user.profil.id)
    @profil.update(profil_params)

    redirect_to profil_path(@profil)
  end

  def destroy
  end

  def profil_params
    params.require(:profil).permit(:name, :address, :city, :photo, :photo_cache)
  end
end
