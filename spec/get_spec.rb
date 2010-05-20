require 'spec_helper'

describe Crow, "get" do
  it "should map top level uris to fixture files" do
    HTTParty.get("http://whatever/simple_get.txt").should == "it worked\n"
  end

  it "should work with nested routes" do
    HTTParty.get("http://whatever/people/1.json").should == "{'name': 'will'}\n"
  end

end
