class AddPlayerToNumbers < ActiveRecord::Migration[7.0]
  def change
    add_reference :numbers, :player, null: false, foreign_key: true
  end
end
