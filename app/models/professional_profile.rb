class ProfessionalProfile < ApplicationRecord
  belongs_to :user
  has_many :ip_profiles, dependent: :destroy
  accepts_nested_attributes_for :ip_profiles, reject_if: :all_blank, allow_destroy: true

  validates :hireable_lesson, :hireable_booking, inclusion: { in: [ true, false ], message: "can't be blank" }
end
