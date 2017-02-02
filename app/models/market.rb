class Market < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  validates :name, presence: true
end
