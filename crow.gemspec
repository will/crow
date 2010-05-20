# -*- encoding: utf8 -*-
require 'rake'

Gem::Specification.new do |s|
  s.name = "crow"
  s.version = "0.1.2"
  s.authors = "Will Leinweber"
  s.email = "will@bitfission.com"
  s.homepage = "http://github.com/will/crow"
  s.summary = "Easy API mocking with Crow"
  s.description = "Easy API mocking with Crow!"

  s.files = FileList['lib/*.rb', 'spec/*.rb', '[A-Z]*'].to_a
  s.add_dependency('sinatra')
end

