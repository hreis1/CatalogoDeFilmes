class CreateDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :nationality
      t.date :date_of_birth

      t.timestamps
    end
  end
end
