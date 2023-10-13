class AddGeneroRefToDirectors < ActiveRecord::Migration[7.1]
  def change
    add_reference :directors, :genres, null: false, foreign_key: true
  end
end
