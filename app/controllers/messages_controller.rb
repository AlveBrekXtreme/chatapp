class MessagesController < ApplicationController
  def new
    Message.new
  end

  def create
    @channel = Message.new(message_params)
    unless @channel.content.blank?
      @channel.save
    else
      flash[:notice] = 'It cant be blank'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :channel_id, :user_id)
  end
end
