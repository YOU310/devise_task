# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.first
Game.create!(name: "スーパーマリオワールド", genre: "アクション", user_id: user.id)
Game.create!(name: "ぷよぷよ", genre: "パズル", user_id: user.id)
Game.create!(name: "ドラゴンクエストⅤ", genre: "RPG", user_id: user.id)
puts "初期データ投入完了"
