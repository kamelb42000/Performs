class Number < ApplicationRecord
  belongs_to :player
  belongs_to :sport
  belongs_to :user
  has_many :trainings
end
