# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string(255)      not null
#  age             :integer          not null
#  sex             :integer          not null
#  email           :string(255)      not null
#  password_digest :string(255)      not null
#  picture         :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
