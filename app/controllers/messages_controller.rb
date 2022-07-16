class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    # Strong Prameter
    Message.create(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:title, :content)
  end
end
