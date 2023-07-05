class Number < ApplicationRecord
  belongs_to :sport
  has_many :trainings
end
