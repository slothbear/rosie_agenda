require "rosie_agenda/version"

module RosieAgenda
  class User
    def initialize(username, password)
      @username = username
      @password = password
    end
  end
end
