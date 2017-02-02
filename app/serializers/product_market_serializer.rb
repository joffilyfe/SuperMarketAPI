class ProductMarketSerializer  < ActiveModel::Serializer
  type 'product'
  attributes :id, :product_id, :market_id, :value, :updated_at
end