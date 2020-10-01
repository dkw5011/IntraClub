class Player < ApplicationRecord
    belongs_to :team
  

    has_secure_password
end
