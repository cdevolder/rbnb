class ReviewsController < ApplicationController

  before_action :set_location, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.location = @location

    if @review.save
      redirect_to location_path(@review.location)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end

  def set_location
    @location = Location.find(params[:location_id])
  end
end
