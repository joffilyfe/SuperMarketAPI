require 'test_helper'

class MarketControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get markets_url
    assert_response :success
  end

  test "should get show" do
    get markets_url, params: {id: 1}
    assert_response :success
  end

  test "should get show with error" do
    get market_url(1)
    assert_response :missing
  end

  test 'should show a market' do
    m = Market.first
    get market_url(m.id)
    assert_response :success
  end

end
