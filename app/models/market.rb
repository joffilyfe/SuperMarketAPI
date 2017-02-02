class Market < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  validates :name, presence: true

  has_many :product_market
  has_many :products, through: :product_market
end
