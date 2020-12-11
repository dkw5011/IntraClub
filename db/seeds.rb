# create_table "sports", force: :cascade do |t|
#     t.string "name"
#     t.integer "total_players"
#     t.integer "total_teams"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end
Sport.destroy_all
Team.destroy_all
Game.destroy_all
Player.destroy_all


Sport.create([
    {name: "Volleyball", total_players: 6, total_teams: 3},
    {name: "Bowling", total_players: 4, total_teams: 5}
])

Team.create([
    {wins: 3, losses: 5, name: "Team A"},
    {wins: 1, losses: 7, name: "Team B"},
    {wins: 4, losses: 4, name: "Team C"}
])# This file should contain all the record creation needed to seed the database with its default values.
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

 Game.create([
    {location: "YMCA", date: 2021-01-10 , time: '5:00', team_id: 1, sport_id: 1},
    {location: "Boys and Girls Club", date: 2021-01-10, time: '6:00', team_id: 2, sport_id: 2}
])

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

# Player.create([
#     {name: "Wylie", email: "wylie@wylie.com", username: "wylie", password: "password", age: 17, team_id: Team.first.id},
#     {name: "Jess", email: "jess@jess.com", username: "jess", password: "pw", age: 22, team_id: Team.second.id}
# ])
5.times do
    Player.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        username: Faker::Hipster.word,
        password: "password",
        age: Faker::Number.between(from: 18, to: 100),
        team_id: Faker::Number.between(from: Team.first.id, to: Team.last.id)
    )
end
#   