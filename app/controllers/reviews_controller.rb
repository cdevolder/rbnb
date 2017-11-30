class ReviewsController < ApplicationController

  before_action :set_location, only: [:new, :create]

  def new
    @location = Location.find(params[:location_id])
    @review = Review.new
  end

  def create

    @location = Location.find(params[:location_id])


    @review = Review.new(review_params)

    @review.location = @location

    @review.sender = Profil.find(params.require(:review).permit(:sender_id)["sender_id"])
    @review.recipient = Profil.find(params.require(:review).permit(:recipient_id)["recipient_id"])

    if @review.save
      redirect_to developpeur_path(@review.recipient.developpeur)
    else

      render :new
    end
  end




  private

  def review_params
    params.require(:review).permit(:description, :rating, :location_id, :sender_id, :recipient_id)
  end

  def set_location
    @location = Location.find(params[:location_id])
  end
end
