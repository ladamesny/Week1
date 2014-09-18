require 'spec_helper'

describe Power do
  before(:each) do
    @power_object = Power.new(8,2)
    @expected_result = 2**8
    @wrong_object = Power.new("test", 1)
  end

  describe "#tests" do
    it "Expected result should be given" do
      expect(@power_object.calculate).to eql(@expected_result)
    end

    it "Raises an error if parameter entered is not a string" do
      expect(Power.new("test", 1)).to raise_error(ArgumentError)
    end

 end
end