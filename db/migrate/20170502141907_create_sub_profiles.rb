class CreateSubProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_profiles do |t|
      t.references :profile, index: true
      t.string :name
      t.timestamps
    end
  end
end
