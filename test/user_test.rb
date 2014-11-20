require "test_helper"

class TestUser < Minitest::Test

  def setup
    @user = RosieAgenda::User.new("Rosie Jetson", "Hello Roy Boy")
  end

  def test_instatiate_user
    refute_nil @user
  end

end
