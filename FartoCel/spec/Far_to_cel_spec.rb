require 'spec_helper'

describe Temperature do
  before :each do
    @temperature = Temperature.new
    @temp = rand(-100..100)
    @celsius = @temperature.in_celsius(@temp)
  end

  describe "#test" do

    it "32 degrees Fahrenheit to be 0 degrees celsius" do
      expect(@temperature.in_celsius(32)).to eql(0.0)
    end

    it "45 degrees Fahrenheit to be 7.22 degrees celsius" do
      expect(@temperature.in_celsius(45)).to eql((13*5.0/9.0))
    end

    it "method should accept only an integer or float" do
      expect(@temp).to (be_an_instance_of(Fixnum) || be_an_instance_of(Float))
    end

    it "raises an error if the number is not an integer" do
      expect{@temperature.in_celsius("string")}.to raise_error(error = ArgumentError)
    end


  end

end