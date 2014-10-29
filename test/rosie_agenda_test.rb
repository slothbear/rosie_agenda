require "test_helper"

class TestRosieAgenda < Minitest::Test

  def setup
    @agenda = RosieAgenda::Agenda.new("Rosie Jetson", "I love Mac")
  end

  def test_can_instatiate_agenda
    refute_nil @agenda
  end

end
