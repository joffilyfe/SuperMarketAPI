class MarketSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :address, :created_at
end