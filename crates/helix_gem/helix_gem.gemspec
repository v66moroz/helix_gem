# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'helix_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "helix_gem"
  spec.version       = HelixGem::VERSION
  spec.authors       = ["Joe Doe"]
  spec.email         = ["jdoe@example.com"]

  spec.summary       = "Ruby gem with Rust extension"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "helix_runtime", "~> 0.7.5"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.8"

  spec.extensions = %w[extconfig.rb]
end
