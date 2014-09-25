class Country

  attr_accessor :string, :array, :delimiters
  def initialize s
    @string = s
    @array =[]
    @delimiters = [',',' ','.','|','*','?']

  end

  def split
    country = ""
    index = 0

    while index < @string.size do
      if @string[index+1] == nil
        if @delimiters.include?(@string[index])
          index+=1
        else 
          country += @string[index]
        end
      elsif @delimiters.include?(@string[index])
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

  def show_contents
    "#{@array.join(", ")}"
  end
end

first = Country.new(" ?*USA. Canada,.* |Mexico,Bermuda Grenada Belize*Brazil|Argentina****||||||||")
second = Country.new("||||||||")
third = Country.new("")
fourth = Country.new(" ,?****||||||||")

first.split
second.split
third.split
fourth.split

puts "First: "+first.show_contents
puts "Second: "+second.show_contents
puts "Third: "+third.show_contents
puts "Fourth: "+fourth.show_contents