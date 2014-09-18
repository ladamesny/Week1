require 'spec_helper'

describe TwoString do
  before(:each) do
    @two_string = TwoString.new
    @teststring = "hello"
    @goodstring = "hello"
    @badstring = "goodbye"
    @notstring = 5
  end

  describe "#tests" do
    it "return true if strings match" do
      expect(@two_string.same_string(@teststring,@goodstring)).to eql("true")
    end

    it "return false if strings don't match" do
      expect(@two_string.same_string(@teststring,@badstring)).to eql("false")
    end

    it "raises an error if parameter entered is not a string" do
      expect{@two_string.same_string(@teststring, @notstring)}.to raise_error(error = ArgumentError)
    end

  end
end