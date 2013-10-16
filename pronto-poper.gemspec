# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

require 'pronto/poper/version'

Gem::Specification.new do |s|
  s.name        = 'pronto-poper'
  s.version     = Pronto::PoperVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.author      = 'Mindaugas Mozūras'
  s.email       = 'mindaugas.mozuras@gmail.com'
  s.homepage    = 'http://github.org/mmozuras/pronto-poper'
  s.summary     = 'Pronto runner for Poper, git commit message analyzer'

  s.required_rubygems_version = '>= 1.3.6'
  s.license = 'MIT'

  s.files         = Dir.glob('{lib}/**/*') + %w[LICENSE README.md]
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency 'pronto', '~> 0.1.0'
  s.add_dependency 'poper', '~> 0.0.1'
  s.add_development_dependency 'rake', '~> 10.1.0'
  s.add_development_dependency 'rspec', '~> 2.14.0'
end
