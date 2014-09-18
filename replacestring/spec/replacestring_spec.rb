require 'spec_helper'

describe ReplaceString do
  before(:each) do
    @repstr = ReplaceString.new
    @goodstring = "This is a test"
    @badstring = "This is a toast"
    @notstring = 5
  end

  describe "#tests" do
    it "Should replace 'te' with 'gho'" do
      expect(@repstr.replace_string(@goodstring)).to eql("This is a ghost")
    end

    it "Should find any instances of 'te' to replace" do
      expect(@repstr.replace_string(@badstring)).to eql("This is a toast")
    end


    it "raises an error if parameter entered is not a string" do
      expect{@repstr.replace_string(@notstring)}.to raise_error(error = ArgumentError)
    end

  end
end