class FixColunmNameInDirectors < ActiveRecord::Migration[7.1]
  def change
    rename_column :directors, :genres_id, :genre_id
  end
end
