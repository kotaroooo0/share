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

class User < ApplicationRecord

  has_many :, dependent: :destroy

  # enum sex: { male: 0, female: 1 }

  validates :name, presence: true, length: { maximum: 50 }
  validates :age, presence: true
  validates :sex, presence: true
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :picture, presence: true
end
