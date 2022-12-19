class RequestCategory < ApplicationRecord
  belongs_to :request
  belongs_to :category
end
