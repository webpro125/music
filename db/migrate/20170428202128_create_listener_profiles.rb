class CreateListenerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :listener_profiles do |t|
      t.references :user, index: true
      t.references :genre, index: true
      t.references :sub_genre, index: true
      t.timestamps
    end
  end
end
