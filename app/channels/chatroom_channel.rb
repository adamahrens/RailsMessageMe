class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chatroom_channel'
    logger.debug('ChatroomChannel#subscribed')
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    logger.debug('ChatroomChannel#unsubscribed')
  end
end
