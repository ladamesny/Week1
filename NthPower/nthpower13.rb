
class Power

  def initialize p, b
    raise ArgumentError if @power.is_a?(String) || @base.is_a?(String)
    @power = p
    @base = b
    @result = 1
  end

  def calculate
    iteration = 1
    while iteration <= @power
      @result *= @base
      iteration += 1
    end
    @result
  end

end
