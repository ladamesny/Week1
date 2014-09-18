require 'spec_helper'

describe ReadLine do
  before(:each) do
    @read_object = ReadLine.new
    @expected_line_count = 11
    @expected_hash_count = 3
    @expected_comment_count = 5
  end

  describe "#tests" do
    it "Line count of file should match expected line count" do
      expect(@read_object.line_count).to eql(@expected_line_count)
    end

    it "Hash count of file should match expected hash count" do
      expect(@read_object.hash_count).to eql(@expected_hash_count)
    end

    it "Comment count of file should match expected hash count" do
      expect(@read_object.comment_count).to eql(@expected_comment_count)
    end
  end
end