class AddSportIdToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_reference :players, :sport, null: false, foreign_key: true
  end
end
