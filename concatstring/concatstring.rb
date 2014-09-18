class ConcatString

  attr_accessor :new_string, :array_string

  def initialize
    @new_string =""
    @array_string
  end

  def concat
    @array_string.each do |string|
      @new_string += string.to_s
    end
  end
end

