# frozen_string_literal: true
# == Schema Information
#
# Table name: exhibitions
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)      not null
#  user_id     :integer          not null
#  price       :integer          not null
#  lecture     :string(255)      not null
#  condition   :string(255)      not null
#  discription :string(255)      not null
#  sellout     :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  apply_count :integer          default(0)
#

class Exhibition < ApplicationRecord
  belongs_to :user
  has_one :parchase
  has_many :applies, dependent: :destroy
  has_many :trades, dependent: :destroy

  validates :name, presence: true, length: { maximum: 30 }
  validates :user_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :lecture, presence: true, length: { maximum: 30 }
  validates :condition, presence: true, length: { maximum: 100 }
  validates :discription, presence: true, length: { maximum: 256 }
  validates :sellout, inclusion: {in: [true, false]}

  # 応募しているユーザーかどうか
  def apply_user?(user_id)
    !applies.find_by(user_id: user_id).blank?
  end
end
