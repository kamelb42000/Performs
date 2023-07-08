class Number < ApplicationRecord
  belongs_to :sport
  belongs_to :player
  has_many :trainings

end
