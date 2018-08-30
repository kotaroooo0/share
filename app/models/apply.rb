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

class Apply < ApplicationRecord
    belongs_to :user
    belongs_to :exhibition, counter_cache: :apply_count

    validates :user_id, presence: true
    validates :exhibition_id, presence: true
    validates_uniqueness_of :exhibition_id, scope: :user_id
end
