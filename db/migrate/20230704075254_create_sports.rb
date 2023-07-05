class CreateSports < ActiveRecord::Migration[7.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.string :players
      t.string :teams
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
