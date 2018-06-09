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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
