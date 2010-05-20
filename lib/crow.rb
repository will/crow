require 'sinatra'
class Crow < Sinatra::Base
  def initialize(root_path, opts={})
    super(nil)
    @root_path = root_path
    @opts = opts
  end

  get "/*" do |path|
    fixture_path = File.join(@root_path, 'get', path)
    begin 
      response = File.read fixture_path
    rescue
      @response.status = 500
      response = "Couldn't find: #{fixture_path}"
      puts response if @opts[:verbose]
    end
    response
  end
end
