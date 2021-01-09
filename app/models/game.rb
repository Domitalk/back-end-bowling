class Game < ApplicationRecord
    has_many :players, dependent: :destroy 
    has_many :frames, through: :players
end 