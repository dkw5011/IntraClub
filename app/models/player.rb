class Player < ApplicationRecord
    has_many :teams
    has_many :sport_teams, through: :sports
    has_many :team_games, through: :teams

    has_secure_password
end
