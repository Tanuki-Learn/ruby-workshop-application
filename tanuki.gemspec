# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require "tanuki/version"

Gem::Specification.new do |s|
  s.name = "tanuki"
  s.version = Tanuki::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Logan Stucker"]
  s.email = ["lstucker@gitlab.com"]
  s.summary = "Application used for Workshops"

  s.require_paths = ["lib"]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = ["tanuki"]
  s.required_ruby_version = '~> 2.0'


  s.add_runtime_dependency 'htmlbeautifier'
  s.add_runtime_dependency 'sinatra'
  s.add_runtime_dependency 'webrick'
  s.add_runtime_dependency 'xml-simple'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop'
end
