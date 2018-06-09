# == Schema Information
#
# Table name: user_items
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price      :integer
#  condition  :string
#

class UserItem < ApplicationRecord
  belongs_to :user
  belongs_to :item
end
