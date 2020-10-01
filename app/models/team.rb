class Team < ApplicationRecord
    has_many :games
    has_many :players
    has_many :sports, through: :games
end
