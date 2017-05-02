class ListenerGenre < ApplicationRecord
  has_many :listener_sub_genres, dependent: :destroy
  accepts_nested_attributes_for :listener_sub_genres, reject_if: :all_blank, allow_destroy: true
end
