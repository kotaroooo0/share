# frozen_string_literal: true

# == Schema Information
#
# Table name: purchases
#
#  id            :bigint(8)        not null, primary key
#  exhibition_id :integer          not null
#  purchaser_id  :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Purchase < ApplicationRecord
  belongs_to :purchaser, class_name: 'User', foreign_key: 'purchaser_id'
  belongs_to :exhibition
  # has_one :good_evaluation, :normal_evaluation, :bad_evaluation

  validates :exhibition_id, presence: true
  validates :purchaser_id, presence: true
end
