# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  picture     :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  discription :string
#

class Item < ApplicationRecord

  has_many :users, through: :user_items
  has_many :user_items

  validates :name, presence: true, length: { maximum: 50 }
  validates :picture, presence: true
  validates :discription, presence: true, length: { maximum: 255 }
end
