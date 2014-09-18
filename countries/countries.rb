class Country

  attr_accessor :string, :array, :delimiters
  def initialize
    @string
    @array =[]
    @delimiters = []

  end

  def set_delimiters delimiters_array
    @delimiters = delimiters_array
  end

  def split
    country = ""
    index = 0

    while index < @string.size do
      if @delimiters.include?(@string[index]) || @string[index+1] == nil
        if @string[index+1] == nil
          country += @string[index]
        end
        if country != ""
          @array << country
          country = ""
          index += 1
        else
          index += 1
        end
      elsif @string[index] == ' '
        if @delimiters.include?(@string[index -1])
          index += 1
        else
          country += @string[index]
          index += 1
        end
      else
        country += @string[index]
        index += 1
      end
    end
    @array
  end
end