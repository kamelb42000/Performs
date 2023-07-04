class CreateNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :numbers do |t|
      t.integer :score
      t.integer :duration
      t.references :sports, null: false, foreign_key: true

      t.timestamps
    end
  end
end
