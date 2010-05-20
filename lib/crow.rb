require 'sinatra'
class Crow < Sinatra::Base
  def initialize(root_path)
    super
    @root_path = root_path
  end

  get "/*" do |path|
    File.read File.join(@root_path, 'get', path)
  end
end
