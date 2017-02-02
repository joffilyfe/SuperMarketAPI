require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test 'should return 200' do
    get products_url
    assert_response :success
  end
end
