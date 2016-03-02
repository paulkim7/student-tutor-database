require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test "Login" do
    https!
    get "/log_in"
    assert_response :success
  end

end
