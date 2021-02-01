class Team < ApplicationRecord
    has_many :games
    has_many :players
    has_many :sports, through: :games

    
    scope :ordered_wins, -> {order(wins: :desc)}

end
