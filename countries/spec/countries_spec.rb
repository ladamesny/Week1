require 'spec_helper'

describe Country do
  before(:each) do
    @country_object = Country.new
    @country_object.string = "USA, Canada, Mexico, Bermuda, Grenada, Belize"
    @country_object.set_delimiters([",", " ", "."])
    @expected_delimiters = [",", " ", "."]
    @expected_array= ["USA", "Canada", "Mexico", "Bermuda", "Grenada", "Belize"]
    @new_expected_array= ["USA", "Canada", "Mexico", "Bermuda", "Grenada", "Belize", "Cuba", "Ghana"]
  end

  describe "#tests" do
    it "Should split countries string to countries within an array " do
      expect(@country_object.split).to eql(@expected_array)
    end

    it "Should work even if we add countries to our originall string" do
      @country_object.string += ", Cuba, Ghana"
      expect(@country_object.split).to eql(@new_expected_array)
    end

    it "Make sure delimiters are set as expected" do
      expect(@country_object.delimiters).to eql(@expected_delimiters)
    end
  end
end