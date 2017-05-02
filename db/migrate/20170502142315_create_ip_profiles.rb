class CreateIpProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :ip_profiles do |t|
      t.references :professional_profile, index: true
      t.references :profile, index: true
      t.string :profile_name, unique: true

      t.timestamps
    end
  end
end
