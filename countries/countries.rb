class Country

  attr_accessor :string, :array
  def initialize
    @string
    @array =[]

  end

  def split delimiter
    country = ""
    index = 0

    while index < @string.size do
      if @string[index] == delimiter || @string[index+1] == nil
        if @string[index+1] == nil
          country += @string[index]
        end
        @array << country
        country = ""
        index += 1
      elsif @string[index] == ' '
        if @string[index -1] == delimiter
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