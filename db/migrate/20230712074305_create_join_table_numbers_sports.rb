class CreateJoinTableNumbersSports < ActiveRecord::Migration[7.0]
  def change
    create_join_table :numbers, :sports do |t|
      t.index [:number_id, :sport_id]
      t.index [:sport_id, :number_id]
    end
  end
end
