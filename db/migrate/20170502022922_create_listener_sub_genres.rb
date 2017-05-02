class CreateListenerSubGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :listener_sub_genres do |t|
      t.references :listener_genre, index: true
      t.references :sub_genre, index: true
      t.timestamps
    end
    remove_column :listener_genres, :sub_genre_id
  end
end
