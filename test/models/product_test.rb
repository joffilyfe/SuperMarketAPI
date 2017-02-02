require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test 'should be invalid' do
    p = Product.new(photo: 'somephoto')
    assert_not p.valid?
  end

  test 'should be valid' do
    p = Product.new(name: 'Orange')
    assert p.valid?
  end
end
