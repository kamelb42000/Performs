class Number < ApplicationRecord
  belongs_to :sports
  has_many :trainings
end
