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

class User < ApplicationRecord

  has_many :items, through: :user_items
  has_many :user_items
end
