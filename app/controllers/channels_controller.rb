class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
  end

  def show
    @channel = Channel.find(params[:id])
    # render turbo_steam:
    #          turbo_stream.replace("chatroom",
    #           partial: "chatroom",
    #           locals: { channel: @channel }
    #          )
    respond_to do |format|
      format.html
    end
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel_params)
    if @channel.save
      redirect_to channels_index_path
    end
  end

  private

  def channel_params
    params.require(:channel).permit(:name)
  end
end
