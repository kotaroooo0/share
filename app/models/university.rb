# frozen_string_literal: true

# == Schema Information
#
# Table name: universities
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class University < ApplicationRecord
  has_many :users

  validates :name, presence: true, length: { maximum: 30 }
end
