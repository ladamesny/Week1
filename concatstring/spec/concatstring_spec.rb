require 'spec_helper'

describe ConcatString do
  before(:each) do
    @concatstr = ConcatString.new
    @concatstr.array_string = ["Hello there, ", "this is a test to ", "concatenate strings ", "in an array"]
    @concatstr.concat
    @expected_string = "Hello there, this is a test to concatenate strings in an array"
    @expected_length = @expected_string.length
  end

  describe "#tests" do
    it "Should concatenate array contents into one string" do
      expect(@concatstr.new_string).to eql(@expected_string)
    end

    it "The length of the string should be the same" do
      expect(@concatstr.new_string.length).to eql(@expected_length)
    end

  end
end