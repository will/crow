# -*- encoding: utf8 -*-
require 'rake'

Gem::Specification.new do |s|
  s.name = "crow"
  s.version = "0.1"
  s.authors = "Will Leinweber"
  s.email = "will@bitfission.com"
  s.homepage = "http://github.com/will/crow"
  s.summary = "Easy API mocking with Crow"
  s.description = "Intended to be used with Artifice or ShamRack"

  s.files = FileList['lib/*.rb', 'spec/*.rb'].to_a
  s.add_dependency('sinatra')
end

