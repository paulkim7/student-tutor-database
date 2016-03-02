require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase

  test "dept name" do
    department = departments(:CS)
    assert_equal("CSE", department.name)
  end

end
