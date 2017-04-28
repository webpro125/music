class CreateProfessionalProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :professional_profiles do |t|
      t.references :professional, index: true
      t.references :industry_profile, index: true
      t.references :industry_sub_profile, index: true
      t.references :genre, index: true
      t.boolean :hireable_lesson
      t.boolean :hireable_booking
      t.timestamps
    end
  end
end
