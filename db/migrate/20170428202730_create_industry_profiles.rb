class CreateIndustryProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :industry_profiles do |t|
      t.string :name
      t.timestamps
    end
  end
end
