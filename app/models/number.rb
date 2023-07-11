class Number < ApplicationRecord
  belongs_to :player
  has_many :trainings
  has_and_belongs_to_many :sports
end
