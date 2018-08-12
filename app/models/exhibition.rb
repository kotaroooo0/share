# == Schema Information
#
# Table name: exhibitions
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)      not null
#  user_id     :string(255)      not null
#  price       :integer          not null
#  lecture     :string(255)      not null
#  condition   :string(255)      not null
#  discription :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Exhibition < ApplicationRecord
end
