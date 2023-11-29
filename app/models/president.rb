class President < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, presence: true
  has_many_attached :photos
end
