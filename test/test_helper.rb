require "minitest/autorun"
require "minitest-vcr"
require "rosie_agenda"
require "webmock/minitest"

VCR.configure do |config|
  config.cassette_library_dir = 'test/cassettes'
  config.hook_into :webmock
end

__END__
VCR.configure do |c|
  c.filter_sensitive_data("<SOMESITE_PASSWORD>") do
    ENV['SOMESITE_PASSWORD']
    # or $credentials['somesite']['password'] or whatever
  end
end

Now, for ENV['SOMESITE_PASSWORD'], it can be real credential by using Figaro gem.