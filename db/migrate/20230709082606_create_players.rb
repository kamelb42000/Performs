class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.integer :size
      t.integer :height
      t.string :position

      t.timestamps
    end
  end
end
