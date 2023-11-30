class Review < ApplicationRecord
  belongs_to :user
  belongs_to :president

  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :comment, presence: true, length: { minimum: 5, maximum: 500 }
  validates :user_id, presence: true
  validates :president_id, presence: true
end
