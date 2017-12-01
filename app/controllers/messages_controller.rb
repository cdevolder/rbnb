class MessagesController < ApplicationController

  before_action :set_location, only: [:new, :create]

  def new
    # @message = Message.new
  end

  def create
    @location = Location.find(params[:location_id])
    @message = Message.new(message_params)
    @message.location_id = @location.id

    @message.sender = Profil.find(params.require(:message).permit(:sender_id)["sender_id"])
    @message.recipient = Profil.find(params.require(:message).permit(:recipient_id)["recipient_id"])

    if @message.save
      respond_to do |format|
        format.html { redirect_to location_path(@location) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'locations/show' }
        format.js  # <-- idem
      end
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
