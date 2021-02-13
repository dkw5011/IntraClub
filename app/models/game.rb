class Game < ApplicationRecord
    belongs_to :sport
    belongs_to :team

    has_many :posts
end
