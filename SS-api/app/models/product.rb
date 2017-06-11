class Product < ApplicationRecord

  validates_presence_of :type, :status, :available, :published, :available_since,
  :published_since, :price
end
