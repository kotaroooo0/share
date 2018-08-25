# == Schema Information
#
# Table name: exhibitions
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)      not null
#  exhibition_id     :string(255)      not null
#  price       :integer          not null
#  lecture     :string(255)      not null
#  condition   :string(255)      not null
#  discription :string(255)      not null
#  sellout     :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

describe Exhibition, type: :model do
  it 'is valid exhibition' do
    valid_exhibiton = create(:exhibition)
    expect(valid_exhibiton.valid?).to eq true
  end

  it 'is invalid exhibition without name' do
    invalid_exhibition = build(:exhibition, name: nil)
    expect(invalid_exhibition.valid?).to eq false
  end

  it 'is invalid exhibition without grade' do
    invalid_exhibition = build(:exhibition, price: nil)
    expect(invalid_exhibition.valid?).to eq false
  end

  it 'is invalid exhibition without sex' do
    invalid_exhibition = build(:exhibition, lecture: nil)
    expect(invalid_exhibition.valid?).to eq false
  end

  it 'is invalid exhibition without image' do
    invalid_exhibition = build(:exhibition, condition: nil)
    expect(invalid_exhibition.valid?).to eq false
  end

  it 'is invalid exhibition without introduction' do
    invalid_exhibition = build(:exhibition, discription: nil)
    expect(invalid_exhibition.valid?).to eq false
  end
  it 'is invalid exhibition without password' do
    invalid_exhibition = build(:exhibition, sellout: nil)
    expect(invalid_exhibition.valid?).to eq false
  end

end
