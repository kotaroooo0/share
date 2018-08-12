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
  has_one :university
  has_many :exhibitions
  has_many :purchases, class_name: "Purchase",
                       foreign_key: "purchaser_id",
                       dependent: :destroy
end
