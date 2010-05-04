require 'test_helper'

class ForumPermissionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ForumPermission.new.valid?
  end
end
