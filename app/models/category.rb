class Category < ApplicationRecord
  has_many :request_categories, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true, uniqueness: true
end
