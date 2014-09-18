class ReplaceString

  def replace_string test_string
    raise ArgumentError unless test_string.is_a? String

    letters = test_string.split(//)
    index = 0
puts letters
    while index < letters.size do
      if letters[index] == 't'
        if letters[index+1] == 'e'
          letters[index] = 'g'
          letters[index+1] = 'h'
          letters.insert(index+2, 'o')
        end
      end
      index += 1
    end
  puts letters.join
  letters.join

  end
end

r = ReplaceString.new
r.replace_string("This is a ghost")