# Responsible for creating messages for a User
class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    message = current_user.messages.build(message_params)
    if message.save
      flash[:notice] = 'Message saved'
    else
      flash[:alert] = 'Message could not be saved'
    end

    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
