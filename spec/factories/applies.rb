# == Schema Information
#
# Table name: applies
#
#  id            :bigint(8)        not null, primary key
#  user_id       :bigint(8)        not null
#  exhibition_id :bigint(8)        not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do
  factory :apply do
    
  end
end
