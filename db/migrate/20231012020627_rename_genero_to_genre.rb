class RenameGeneroToGenre < ActiveRecord::Migration[7.1]
  def change
    rename_table :generos, :genres
  end
end
