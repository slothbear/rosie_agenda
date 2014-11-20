guard :minitest do
  watch(%r{^test/(.*)\/?(.*)_test\.rb$})
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { |m| "test/#{m[1]}#{m[2]}_test.rb" }
  # standard line above does not find our lib files...
  # replace with the line below. Probably runs too much. match test names for less.
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { |m| "test" }
  watch(%r{^test/test_helper\.rb$})      { 'test' }
end
