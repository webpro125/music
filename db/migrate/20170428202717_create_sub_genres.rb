class CreateSubGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_genres do |t|
      t.references :genre, index: true
      t.string :name
      t.timestamps
    end
  end
end
