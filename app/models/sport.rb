class Sport < ApplicationRecord
  belongs_to :users
  has_many :numbers
end
