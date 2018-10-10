# frozen_string_literal: true

class ChatRoom < ApplicationRecord
  has_many :messages
  belongs_to :trade
end
