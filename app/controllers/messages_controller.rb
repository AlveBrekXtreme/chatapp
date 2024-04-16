class MessagesController < ApplicationController
  def new
    Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user_id = current_user.id
    unless @message.content.blank?
      @message.save
    else
      flash[:notice] = 'It cant be blank'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :channel_id, :user_id)
  end
end
