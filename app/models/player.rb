class Player < ApplicationRecord
    belongs_to :team
  
    validates :username, uniqueness: true, presence: true

    accepts_nested_attributes_for :team

    has_secure_password

    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |player|
            player.username = auth.info.name
            player.email = auth.info.email
            player.password = SecureRandom.hex
        end
    end
end
