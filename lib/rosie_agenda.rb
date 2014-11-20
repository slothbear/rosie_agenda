require "rosie_agenda/version"
require 'mechanize'

module RosieAgenda
  class User

    def initialize(user_name, password)
      @user_name = user_name
      @password = password
      @logged_in = false
      @fth = RosieAgenda::FTH.new
    end

    def login
      return if @logged_in
      @fth.authenticate_user(self)
    end

  end

  class FTH
    def initialize
      @fth = Mechanize.new
    end

    def authenticate_user(user)
      true
    end

    private
    def get_member_id(name)
      42
    end
  end
end
