require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "grabbing correct user info" do
    user = users(:tutorbob)
    assert_equal("Bob Joe", user.name)

    user.name = "Billy Bob Joe"
    assert_equal("Billy Bob Joe", user.name)
  end

end
