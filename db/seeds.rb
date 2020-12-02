# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#  create_table "games", force: :cascade do |t|
#     t.string "location"
#     t.string "team"
#     t.date "date"
#     t.time "time"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.integer "team_id"
#     t.integer "sport_id"
#   end

# Game.create([
#     {location: "YMCA", team: "Team A", date: , time:}
# ])

#   create_table "players", force: :cascade do |t|
#     t.string "name"
#     t.string "email"
#     t.string "username"
#     t.string "password_digest"
#     t.integer "age"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.integer "team_id"
#   end

#   create_table "sports", force: :cascade do |t|
#     t.string "name"
#     t.integer "total_players"
#     t.integer "total_teams"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end