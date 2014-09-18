class Bubble

  attr_accessor :numbers
  def initialize array
    @numbers = array
  end

  def sort
    index = 0
    iteration = 0

    while iteration < @numbers.size
      while index < @numbers.size
      raise ArgumentError unless @numbers[index].is_a?(Fixnum)
        if @numbers[index+1] != nil
          if @numbers[index] > @numbers[index+1]
            temp = @numbers[index+1]
            @numbers[index+1] = @numbers[index]
            @numbers[index] = temp
          end
        end
        index +=1
      end
      iteration +=1
      index = 0
    end
  end

end