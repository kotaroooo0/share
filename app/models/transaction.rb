# frozen_string_literal: true

# == Schema Information
#
# Table name: transactions
#
#  id            :bigint(8)        not null, primary key
#  user_id       :bigint(8)        not null
#  exhibition_id :bigint(8)        not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#


class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :exhibition
end
