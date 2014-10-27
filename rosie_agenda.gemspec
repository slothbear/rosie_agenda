# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rosie_agenda/version'

Gem::Specification.new do |spec|
  spec.name          = "rosie_agenda"
  spec.version       = RosieAgenda::VERSION
  spec.authors       = ["Paul Morganthall"]
  spec.email         = ["gems@morganthall.com"]
  spec.summary       = "Custom printed agendas for Toastmasters meetings"
  spec.description   = %q{
    Gather meeting role assignments, then plug them into
    a custom HTML template for beautiful printing.
    }
  spec.homepage      = "https://github.com/slothbear/rosie_agenda"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "terminal-notifier-guard"

end
