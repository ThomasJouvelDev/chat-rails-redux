class Api::V1::MessagesController < ApplicationController
  before_action :retrieve_channel, :authenticate_user!

  def index
    messages = @channel.messages.order('created_at ASC')
    render json: messages # see Message.as_json method
  end

  def create
    message = @channel.messages.build(content: params[:content])
    message.user = current_user
    message.save
    render json: message # see Message.as_json method
  end

  private

  # def message_params 
  #   params.require(:message).permit(:content)
  # end

  def retrieve_channel
    if params[:channel_id].blank?
      @channel = Channel.first
    else
      @channel = Channel.find_by(name: params[:channel_id])
    end
  end
end
