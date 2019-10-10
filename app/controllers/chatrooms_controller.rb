class ChatroomsController < ApplicationController
  before_action :ensure_logged_in
  def index
    @messages = Message.all
    @users = User.all.order(username: :asc)
    @message = Message.new
  end

  def ensure_logged_in
    unless user_signed_in?
      redirect_to login_path
    end
  end
end
