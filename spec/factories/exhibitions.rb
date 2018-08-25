# == Schema Information
#
# Table name: exhibitions
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)      not null
#  user_id     :string(255)      not null
#  price       :integer          not null
#  lecture     :string(255)      not null
#  condition   :string(255)      not null
#  discription :string(255)      not null
#  sellout     :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :exhibition do
    name { Faker::Name.name }
    price { Faker::Number.between(1, 100000) }
    lecture { Faker::Lorem.characters(20) }
    condition { Faker::Lorem.characters(100) }
    discription { Faker::Lorem.characters(100) }
    sellout { false }

    user
  end
end