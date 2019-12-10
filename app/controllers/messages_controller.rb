# Responsible for creating messages for a User
class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    message = current_user.messages.build(message_params)
    if message.save
      logger.debug 'Message saved'
      partial = render(partial: 'messages/message', object: message)
      ActionCable.server.broadcast('chatroom_channel', partial)
    else
      flash[:alert] = 'Message could not be saved'
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
