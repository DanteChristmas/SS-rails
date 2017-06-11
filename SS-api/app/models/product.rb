class Product < ApplicationRecord
  validates_presence_of :product_type, :status, :price

  enum product_type: [:strap, :merch, :apparel]
  enum status: [:available, :holding, :sold]
end
