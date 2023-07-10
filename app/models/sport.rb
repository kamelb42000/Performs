class Sport < ApplicationRecord
  belongs_to :user
  has_many :numbers
  has_many :players
end
