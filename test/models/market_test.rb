require 'test_helper'

class MarketTest < ActiveSupport::TestCase
  test 'should be invalid' do
    m = Market.new(latitude: '', longitude: '')
    assert_not m.valid?
  end

  test 'should be valid' do
    m = Market.new(name: 'Super market')
    assert m.valid?
  end
end
