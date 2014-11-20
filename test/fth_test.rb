require "test_helper"

class TestFTH < Minitest::Test

  def setup
    @fth = RosieAgenda::FTH.new
  end

  def test_instatiate_fth
    refute_nil @fth
  end

end
