require 'spec'
require 'artifice'
require 'httparty'
$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'crow'

fixture_path = File.join(File.dirname(__FILE__), 'fixtures')
Artifice.activate_with Crow.new(fixture_path)

