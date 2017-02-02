require 'test_helper'

class ProductMarketTest < ActiveSupport::TestCase
  test 'should have product and market association' do
    m = Market.first
    p = Product.first
    assert m.products.where(product: {name: p.name})
  end
end
