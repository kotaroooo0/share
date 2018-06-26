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

  has_many :user_items, dependent: :destroy
  has_many :items, through: :user_items

  # enum sex: { male: 0, female: 1 }

  validates :name, presence: true, length: { maximum: 50 }
  validates :age, presence: true
  validates :sex, presence: true
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :picture, presence: true
end
