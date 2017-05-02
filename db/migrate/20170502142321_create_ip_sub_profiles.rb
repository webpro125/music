class CreateIpSubProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :ip_sub_profiles do |t|
      t.references :ip_profile, index: true
      t.references :sub_profile, index: true
      t.timestamps
    end
  end
end
