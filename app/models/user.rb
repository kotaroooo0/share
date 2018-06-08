# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  age             :integer          not null
#  sex             :integer          not null
#  email           :string           not null
#  password_digest :string           not null
#  picture         :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord

  has_many :items, through: :user_items
  has_many :user_items
end
