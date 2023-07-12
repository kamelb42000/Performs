class AddSportIdToNumbers < ActiveRecord::Migration[7.0]
  def change
    add_reference :numbers, :sport, foreign_key: true
  end
end
