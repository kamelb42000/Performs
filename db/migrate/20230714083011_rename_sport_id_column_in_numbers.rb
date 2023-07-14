class RenameSportIdColumnInNumbers < ActiveRecord::Migration[7.0]
  def up
    # Renommer la colonne existante en une autre colonne temporaire
    rename_column :numbers, :sports_id, :temp_sports_id

    # Ajouter la nouvelle colonne avec le nom souhaité
    add_column :numbers, :sports_id, :bigint

    # Copier les valeurs de la colonne temporaire à la nouvelle colonne
    execute <<-SQL
      UPDATE numbers SET sports_id = temp_sports_id;
    SQL

    # Supprimer la colonne temporaire
    remove_column :numbers, :temp_sports_id
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
