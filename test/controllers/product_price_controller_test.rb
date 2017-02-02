require 'test_helper'

class ProductPriceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products_price_products_url
    assert_response :success
  end

  test "should get show" do
    get product_prices_products_url(1)
    assert_response :success
  end

end
