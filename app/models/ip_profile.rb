class IpProfile < ApplicationRecord
  has_many :ip_sub_profiles, dependent: :destroy
  accepts_nested_attributes_for :ip_sub_profiles, reject_if: :all_blank, allow_destroy: true

  validates :profile_name, length: { in: 2..32 }, presence: true, uniqueness: true,
            format: { with: RegexConstants::Words::ONLY,
                      message: 'Special letters are not allowed to input' }
end
