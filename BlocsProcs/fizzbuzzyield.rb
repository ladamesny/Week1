class FizzBuzz
  def test number
    raise ArgumentError unless number > 0
    raise ArgumentError, "Integers only" unless number.is_a? Integer
    yield(number)
  end
end

testrun = FizzBuzz.new

numbers= Array (1..100)
numbers.each do |n|
  testrun.test(n) {|n| puts (n%15==0) ? ("FizzBuzz") : (n%3==0) ? ("Fizz") : (n%5==0) ? ("Buzz") : (n.to_s)}
end