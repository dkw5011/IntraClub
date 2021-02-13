class Post < ApplicationRecord
  belongs_to :game
  belongs_to :player

  accepts_nested_attributes_for :game
end
