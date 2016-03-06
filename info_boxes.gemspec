# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'info_boxes/version'

Gem::Specification.new do |spec|
  spec.name          = "info_boxes"
  spec.version       = InfoBoxes::VERSION
  spec.authors       = ["Matje van de Camp"]
  spec.email         = ["matje@taalmonsters.nl"]

  spec.summary       = %q{Add info boxes functionality to HTML elements.}
  spec.description   = %q{Add info boxes functionality to HTML elements.}
  spec.homepage      = "https://github.com/Taalmonsters/info_boxes.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/Taalmonsters/info_boxes.git"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.add_dependency 'sass-rails', '~> 5.0'
  spec.add_dependency 'jquery-rails'
end
