class ReviewsController < ApplicationController

  before_action :set_location, only: [:new, :create]

  def new
    @location = Location.find(params[:location_id])
    @review = Review.new
  end

  def create

    @location = Location.find(params[:location_id])
    @recruteur = Recruteur.find(current_user.profil.recruteur.id)
    @developpeur = Developpeur.find(@location.developpeur_id)

    @review = Review.new(review_params)

    @review.location = @location
    @review.developpeur = @developpeur
    @review.recruteur = @recruteur

    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end




  private

  def review_params
    params.require(:review).permit(:description, :rating, :location_id, :developpeur_id, :recruteur_id)
  end

  def set_location
    @location = Location.find(params[:location_id])
  end
end
