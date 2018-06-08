# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  age             :integer
#  sex             :integer
#  email           :string
#  password_digest :string
#  picture         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
