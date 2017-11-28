class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.location = Location.find(params[:location_id])
    if @review.save
      redirect_to location_path(params[:location_id])
    else
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(:content)
  end
end
