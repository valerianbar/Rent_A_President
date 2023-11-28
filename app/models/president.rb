class President < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, presence: true
end
