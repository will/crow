require 'spec_helper'

def get(uri)
  HTTParty.get(uri)
end

describe Crow, "get" do
  it "should map top level uris to fixture files" do
    get("http://whatever/simple_get.txt").should == "it worked\n"
  end

  it "should work with nested routes" do
    get("http://whatever/people/1.json").should == "{'name': 'will'}\n"
  end
  
  it "should let us know when the fixture isn't found" do
    response = get("http://whatever/this/is/not/a/fixture")
    response.should =~ /Couldn't find/
    response.code.should == 500
  end
end
