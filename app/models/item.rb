# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  price      :integer
#  picture    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ApplicationRecord

  has_many :users, through: :user_items
  has_many :user_items
end
