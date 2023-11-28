class President < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :first_name, :last_name, :description, presence: true
end
