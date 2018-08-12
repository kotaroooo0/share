# frozen_string_literal: true

# == Schema Information
#
# Table name: exhibitions
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)      not null
#  user_id     :string(255)      not null
#  price       :integer          not null
#  lecture     :string(255)      not null
#  condition   :string(255)      not null
#  discription :string(255)      not null
#  sellout     :boolean          default(TRUE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Exhibition < ApplicationRecord
  belongs_to :user
  has_one :parchase

  validates :name, presence: true, length: { maximum: 30 }
  validates :user_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :lecture, presence: true, length: { maximum: 30 }
  validates :condition, presence: true, length: { maximum: 100 }
  validates :discription, presence: true, length: { maximum: 256 }
  validates :sellout, presence: true
end
