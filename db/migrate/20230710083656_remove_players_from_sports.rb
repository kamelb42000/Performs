class RemovePlayersFromSports < ActiveRecord::Migration[7.0]
  def change
    remove_column :sports, :players, :string
  end
end
