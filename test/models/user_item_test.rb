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

require 'test_helper'

class UserItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
