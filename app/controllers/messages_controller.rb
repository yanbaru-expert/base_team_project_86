class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

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
