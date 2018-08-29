# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string(255)      not null
#  grade           :string(255)      not null
#  university_id   :integer          not null
#  sex             :integer          not null
#  email           :string(255)      not null
#  image           :string(255)      not null
#  introduction    :string(255)      not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_many :exhibitions
  has_many :purchases, class_name: 'Purchase', foreign_key: 'purchaser_id', dependent: :destroy
  has_many :applies, dependent: :destroy

  belongs_to :university

  validates :name, presence: true, length: { maximum: 15 }
  validates :grade, presence: true, length: { maximum: 10 }
  validates :university_id, presence: true
  validates :sex, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,
            presence: true,
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  validates :image, presence: true
  validates :introduction, presence: true, length: { maximum: 140 }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
