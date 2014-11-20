require "test_helper"

class TestUser < Minitest::Test

  def setup
    @user = RosieAgenda::User.new("Rosie Jetson", "Hello Roy Boy")
  end

  def test_instatiate_user
    refute_nil @user
  end

  def test_login
    VCR.use_cassette("login_user/rosie") do
      assert @user.login
    end
  end

end
