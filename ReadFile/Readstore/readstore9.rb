class TextToString

  attr_accessor :new_string
  def initialize
    @new_string = ""
    File.open("testfile.txt").each_char do |letter|
      @new_string += letter
    end
  end

  def show_string
    @new_string.to_s
  end


end
