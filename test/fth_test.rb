require "test_helper"

class TestFTH < Minitest::Test

  def setup
    @fth = RosieAgenda::FTH.new
  end

  def test_instatiate_fth
    refute_nil @fth
  end

  def test_authenticate_user
    user = RosieAgenda::User.new("Joe O'Connell", "passwordish")
    assert @fth.authenticate_user(user)
  end
end
