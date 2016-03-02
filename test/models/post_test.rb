require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "save post without title" do
    post = Post.new
    assert_not post.save
  end

  test "save post with negative price" do
    post = Post.new
    post.price = -10
    assert_not post.save
  end

end
