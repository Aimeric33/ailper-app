class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :request

  enum status: { pending: 0, accepted: 1, rejected: 2 }
  validates :date, presence: true
end
