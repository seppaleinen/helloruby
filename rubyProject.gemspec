# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#require 'new_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "rubyProject"
  spec.version       = 0.1
  spec.authors       = ["david eriksson"]
  spec.email         = ["davideriksson@swedenmail.com"]

  spec.summary       = %q{Summary}
  spec.description   = %q{Description}
  spec.homepage      = "http://seppaleinen.github.io"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "simplecov", ">= 0.7.1", "< 1.0.0"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 0.9.6"
  spec.add_development_dependency "codeclimate-test-reporter"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rspec"
  #spec.add_development_dependency "docile", "1.1.5"
end
