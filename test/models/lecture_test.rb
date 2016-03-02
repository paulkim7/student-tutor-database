require 'test_helper'

class LectureTest < ActiveSupport::TestCase
  test "check lecture info" do
    lecture = lectures(:SE)
    assert_equal("CSE 110. Software Engineering", lecture.name)
    assert_equal(1, lecture.department_id)
  end
end
