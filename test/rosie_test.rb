require "minitest/autorun"
require "rosie_agenda"

class TestRosieAgenda < Minitest::Test

  def setup
    @agenda = RosieAgenda::Agenda.new
  end

  def test_can_instatiate_agenda
    refute_nil @agenda
  end

end
