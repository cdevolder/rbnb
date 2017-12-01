class MessagesController < ApplicationController

  before_action :set_location, only: [:new, :create]

  def new
    @location = Location.find(params[:location_id])
    @message = Message.new
  end

  def create
    fail
    @location = Location.find(params[:location_id])
    @message = Message.new(message_params)
    @message.location_id = @location.id

    @message.sender = Profil.find(params.require(:message).permit(:sender_id)["sender_id"])
    @message.recipient = Profil.find(params.require(:message).permit(:recipient_id)["recipient_id"])

    if @message.save
      redirect_to location_path(params[:location_id])
    else
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(:content, :location_id, :sender_id, :recipient_id)
  end

  def set_location
    @location = Location.find(params[:location_id])
  end
end
