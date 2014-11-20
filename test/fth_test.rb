require "test_helper"

class TestFTH < Minitest::Test

  def setup
    @fth = RosieAgenda::FTH.new
  end

  def test_instatiate_fth
    refute_nil @fth
  end

  def test_authenticate_user
    VCR.use_cassette("authenticate_user/rosie") do
      user = RosieAgenda::User.new("Rosie Jetson", "password doesn't matter here")
      assert @fth.authenticate_user(user)
    end
  end
end
