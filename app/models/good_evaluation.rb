# frozen_string_literal: true

# == Schema Information
#
# Table name: good_evaluations
#
#  id          :bigint(8)        not null, primary key
#  purchase_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class GoodEvaluation < ApplicationRecord
  validates :purchase_id, presence: true
end
