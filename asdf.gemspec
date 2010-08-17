# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'asdf/version'

Gem::Specification.new do |s|
  s.name        = "asdf"
  s.version     = Asdf::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Yehuda Katz"]
  s.email       = ["wycats@gmail.com"]
  s.homepage    = "http://github.com/wycats/asdf"
  s.summary     = "Make the current directory available on port 9292"
  s.description = "Use Rack::Directory to rackup the current directory on port 9292 for availability in a browser"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "asdf"

  s.add_runtime_dependency     "rack", "~> 1.2.1"
  s.add_development_dependency "bundler", ">= 1.0.0.rc.5"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map { |f| p f; f[%r{^bin/(.*)}, 1] }.compact
  s.require_path = 'lib'
end
