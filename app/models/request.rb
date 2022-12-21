class Request < ApplicationRecord
  belongs_to :user
  has_one :booking
  has_one :request_category, dependent: :destroy
  has_many :category, through: :request_category

  validates :title, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 50 }
  # validates :category, presence: true
end
