class Professional < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  GENDERS = [{label: :male, value: 1}, {label: :female, value: 2}, {label: :other, value: 3}]

  validates :first_name, length: { in: 2..32 }, presence: true,
            format: { with: RegexConstants::Letters::AND_NUMBERS,
                      message: 'Special letters are not allowed to input' }
  validates :profile_name, :last_name, length: { in: 2..32 }, presence: true,
            format: { with: RegexConstants::Words::AND_SPECIAL,
                      message: 'Special letters are not allowed to input' }
  validates :username, length: { in: 2..32 }, presence: true, uniqueness: true,
            format: { with: RegexConstants::Words::ONLY,
                      message: 'Special letters are not allowed to input' }
  validates :region_id, :province_id, :gender, :city, presence: true
end
