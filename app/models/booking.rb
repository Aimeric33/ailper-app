class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :request

  validates :date, presence: true
end
