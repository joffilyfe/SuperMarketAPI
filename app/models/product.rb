class Product < ApplicationRecord
  validates :name, presence: true
  has_many :product_market
  has_many :markets, through: :product_market
end
