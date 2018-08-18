# frozen_string_literal: true

# 大学
universitie_names = %w[京都大学 同志社大学 立命館大学]
universitie_names.each { |name| University.create!(name: name) }

# ユーザー
user_num = 6
(1..user_num).to_a.each do |i|
  User.create!(
    name: "ユーザー#{i}",
    grade: "#{i}回生",
    university_id: 1,
    sex: 0,
    email: "user#{i}@sample.com",
    image: 'user_picture.png',
    introduction: 'introduction',
    password: 'password',
    password_confirmation: 'password'
  )
end

# # 出品
100.times do |i|
  Exhibition.create!(
    name:       "商品#{i}",
    user_id: rand(1..user_num),
    price: rand(10000),
    lecture: "講義#{i}",
    condition: 'condition',
    discription: 'discription',
    sellout: 'false'
  )
end
