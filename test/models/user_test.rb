require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "User must have a name" do
    u = User.new(password: '123456')
    assert_not u.valid?
  end

  test 'should have a password' do
    u = User.new(name: 'user')
    assert_not u.valid?
  end

  test 'should be valid' do
    u = User.new(name: 'user test', password: '123456')
    assert u.valid?
  end
end
