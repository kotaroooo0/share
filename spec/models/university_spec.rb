# == Schema Information
#
# Table name: universities
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

describe University do

  it "is valid University" do
    valid_univ = create(:university)
    expect(valid_univ.valid?).to eq true
  end

  it "is invalid University without name" do
    invalid_univ = build(:university, name: nil)
    expect(invalid_univ.valid?).to eq false
  end

end