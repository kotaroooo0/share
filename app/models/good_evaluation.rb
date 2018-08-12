# == Schema Information
#
# Table name: good_evaluations
#
#  id           :bigint(8)        not null, primary key
#  evaluator_id :integer          not null
#  evaluatee_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class GoodEvaluation < ApplicationRecord
end
