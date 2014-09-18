require 'spec_helper'

describe TextToString do
  before :each do
    @file_contents = TextToString.new
    @test_contents = "Hello there this is a test to see
                      if everything I type gets entered into a string object
                      Another line
                      more lines
                      and one more
                      #this is first delimited line
                      this is not delimited
                      #this is another delimited
                      #countdelimiters11.rb should now have a count of 3"
  end

  describe "#test" do

    it "The contents pulled from file match the test strings" do
      expect(@file_contents.show_string).to eql(@test_contents)
    end

  end

end