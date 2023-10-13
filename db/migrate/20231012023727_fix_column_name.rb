class FixColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :genres, :nome, :name
  end
end