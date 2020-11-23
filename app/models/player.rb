class Player < ApplicationRecord
    belongs_to :team
  
    validates :username, uniqueness: true, presence: true

    accepts_nested_attributes_for :team

    has_secure_password
end
