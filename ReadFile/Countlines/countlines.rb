class ReadLine

  attr_accessor :count, :file

  def initialize
    @count
    @file = File.open("testfile.txt")
  end

  def line_count
    @count = 0
    @file.each do |line|
      @count += 1
    end
    @count
  end

  def hash_count
    @count = 0
    @file.each do |line|
      if line[0] == '#'
        @count += 1
      end
    end
    @count
  end

  def comment_count
    comment_line = false
    @count = 0
    @file.each do |line|
      if line[0..5] == "=begin"
        comment_line = true
      elsif line[0..3] == "=end"
        comment_line = false
      end

      if comment_line == true
        @count += 1
      end
    end
    @count
  end

end

