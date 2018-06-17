# ユーザー
(0..20).to_a.each{ |i| User.create!(name: "ユーザー#{i}", age: 20, sex: 0, email: "user#{i}@sample.com", password: 'password', password_confirmation: 'password', picture: 'user_picture.png') }
# 商品
(0..50).to_a.each{ |i| Item.create!(name: "商品#{i}", discription: "商品#{i}の説明です。", picture: 'item_picture.png') }
# 出品
100.times { UserItem.create!(user_id: rand(20) + 1, item_id: rand(50) + 1, price: rand(10000), condition: "good") }
