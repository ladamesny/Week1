require 'spec_helper'

describe Country do
  before(:each) do
    @country_object = Country.new
    @country_object.string = "USA, Canada, Mexico, Bermuda, Grenada, Belize"
    @expected_array= ["USA", "Canada", "Mexico", "Bermuda", "Grenada", "Belize"]
    @new_expected_array= ["USA", "Canada", "Mexico", "Bermuda", "Grenada", "Belize", "Dominican Republic", "Ghana"]
  end

  describe "#tests" do
    it "Should split countries string to countries within an array " do
      expect(@country_object.split(",")).to eql(@expected_array)
    end

    it "Should work even if we add countries to our originall string" do
      @country_object.string += "Dominican Republic, Ghana"
      expect(@country_object.split(",")).to eql(@new_expected_array)
    end


  end
end