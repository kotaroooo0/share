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
module Constants
  class University < ApplicationRecord
    belongs_to :user

    validates :name, presence: true, length: { maximum: 30 }
  end
end
