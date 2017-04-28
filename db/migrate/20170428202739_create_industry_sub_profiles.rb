class CreateIndustrySubProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :industry_sub_profiles do |t|
      t.references :industry_profile, index: true
      t.string :name
      t.timestamps
    end
  end
end
