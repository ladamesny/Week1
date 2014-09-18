require 'spec_helper'

describe Bubble do
  before(:each) do
    @first_sort = Bubble.new([9, 44, 3, 65, 17, 32, 0, -5])
    @expected_array = [-5, 0, 3, 9, 17, 32, 44, 65]
    @expected_error = Bubble.new([9, 44, 3, 65, 17, 32, 0, "error"]
  end

  describe "#tests" do
    it "Should return sorted array" do
      expect(@first_sort.sort).to eql(@expected_array)
    end
  end

end