class FizzBuzz
  def test
    lambda do |n|
      puts (n%15==0) ? ("FizzBuzz") : (n%3==0) ? ("Fizz") : (n%5==0) ? ("Buzz") : (n.to_s)
    end
  end
end

testrun = FizzBuzz.new

numbers= Array (1..100)
numbers.each do |n|
  testrun.test[n]
end
