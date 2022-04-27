class Position < ActiveRecord::Base
    has_many :players
    has_many :fantasy_teams, through: :players
end