require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new("The Art of Computer Programming", "Donald Knuth", :computer_science)
  end

  describe "#new" do
    it "returns a Book object" do
      expect(@book).to be_an_instance_of(Book)
    end

    it "throws argument error when given fewer than 3 parameters" do
      expect {Book.new("The Art of Computer Programming", "Donald Knuth")}.to raise_error(error = ArgumentError)
    end
  end

  describe "#title" do
    it "Returns the correct title" do
      expect(@book.title).to eql("The Art of Computer Programming")
    end
  end

  describe "#author" do
    it "returns the correct author" do
      expect(@book.author).to eql("Donald Knuth")
    end
  end

  describe "#category" do
    it "Returns the correct category" do
      expect(@book.category).to eql(:computer_science)
    end
  end
end
