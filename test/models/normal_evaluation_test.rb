# == Schema Information
#
# Table name: normal_evaluations
#
#  id           :bigint(8)        not null, primary key
#  evaluator_id :integer          not null
#  evaluatee_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class NormalEvaluationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
