class Request < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 50 }
end
