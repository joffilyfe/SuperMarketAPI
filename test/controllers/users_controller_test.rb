require 'test_helper'
require 'json'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should return success status' do
    get users_url
    assert_response :success
  end

  test 'should find a first user' do
    get users_url(1)
    users = JSON.parse(response.body)
    # assert_response :success
    assert_equal 'Test User', users['data'][0]['attributes']['name']
  end
end
