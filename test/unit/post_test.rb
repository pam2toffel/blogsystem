require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def test_invalid_with_empty_attributes
    post = Post.new
    # An empty Post model should be invalid
    assert !post.valid?
    # The title field should have validation errors
    assert post.errors.invalid?(:title)
    # The body field should have validation errors
    assert post.errors.invalid?(:body)
  end
end
