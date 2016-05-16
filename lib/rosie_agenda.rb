require "rosie_agenda/version"
require 'mechanize'

URL = "http://www.watertownsaturdaytoastmasters.org/index.cgi"

module RosieAgenda
  class User
    attr_reader :user_name

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
      id = member_id(user.user_name)
      true
    end

    private

    def member_id(name)
      page = @fth.get URL, action: "membersearch", term: name
      # This parse might be avoided (since we're matching on unique chevrons)
      # but #parse produces a UTF-8 string which matches the UTF-8 regex.
      # (move this explanation to documentation or issue or ?)
      response = JSON.parse(page.content)[0]
      id = response["value"].match(/«(\d*)»/)[1]
      id || (raise "Unable to find member id in /#{response['value']}/")
    end
  end
end
