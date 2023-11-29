class President < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, presence: true
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
