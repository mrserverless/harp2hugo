# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'harp2hugo/version'

Gem::Specification.new do |spec|
  spec.name          = "harp2hugo"
  spec.version       = Harp2hugoVersion::VERSION
  spec.authors       = ["Yun Zhi Lin"]
  spec.email         = ["yun@yunspace.com"]
  spec.summary       = %q{harp to hugo converter}
  spec.description   = %q{converts your Harp _data.json meta data into Hugo's format}
  spec.homepage      = ""
  spec.license       = "Apache2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "thor", "~> 0.19"
end
