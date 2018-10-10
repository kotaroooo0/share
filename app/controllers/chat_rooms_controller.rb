# frozen_string_literal: true

class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.find(params[:id])
    @messages = @chat_room.messages
  end
end
