# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Seedr/version'

Gem::Specification.new do |gem|
  gem.name          = "Seedr"
  gem.version       = Seedr::VERSION
  gem.authors       = ["Ashe Avenue -- Tim Boisvert and Rob Farrell"]
  gem.email         = ["tboisvert@asheavenue.com"]
  gem.description   = 'A friendly Rails seeding assistant'
  gem.summary       = 'A friendly Rails seeding assistant'
  gem.homepage      = 'http://github.com/AsheAvenue/Seedr'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency("titleize")
end
