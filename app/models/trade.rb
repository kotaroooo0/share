# frozen_string_literal: true

class Trade < ApplicationRecord
  belongs_to :user
  belongs_to :exhibition
  has_many :chat_rooms
end
