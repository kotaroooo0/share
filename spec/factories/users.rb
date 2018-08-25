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

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    grade { "#{Faker::Number.between(1, 6)}回生" }
    sex { 0 }
    email { Faker::Internet.email }
    image { 'user_picture.png' }
    introduction { Faker::Lorem.characters(100) }
    password { "foobar" }
    password_confirmation { "foobar" }

    university
  end
end
