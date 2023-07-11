class Player < ApplicationRecord
  belongs_to :user
  belongs_to :sport, foreign_key: "sport_id"
  has_many :numbers
end
