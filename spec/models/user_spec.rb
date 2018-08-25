# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string(255)      not null
#  grade           :string(255)      not null
#  university_id   :integer          not null
#  sex             :integer          not null
#  email           :string(255)      not null
#  image           :string(255)      not null
#  introduction    :string(255)      not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

describe User, type: :model do
  it 'is valid user' do
    valid_user = create(:user)
    expect(valid_user.valid?).to eq true
  end

  it 'is invalid user without name' do
    invalid_user = build(:user, name: nil)
    expect(invalid_user.valid?).to eq false
  end

  it 'is invalid user without grade' do
    invalid_user = build(:user, grade: nil)
    expect(invalid_user.valid?).to eq false
  end

  it 'is invalid user without sex' do
    invalid_user = build(:user, sex: nil)
    expect(invalid_user.valid?).to eq false
  end

  it 'is invalid user without image' do
    invalid_user = build(:user, image: nil)
    expect(invalid_user.valid?).to eq false
  end

  it 'is invalid user without introduction' do
    invalid_user = build(:user, introduction: nil)
    expect(invalid_user.valid?).to eq false
  end
  it 'is invalid user without password' do
    invalid_user = build(:user, password: nil)
    expect(invalid_user.valid?).to eq false
  end

end
