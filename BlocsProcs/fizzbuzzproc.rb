class FizzBuzz
  def test proc
    numbers= Array (1..100)
    numbers.each do |n|
      proc.call(n)
    end
  end
end

testrun = FizzBuzz.new
fbproc = Proc.new {|n| puts (n%15==0) ? ("FizzBuzz") : (n%3==0) ? ("Fizz") : (n%5==0) ? ("Buzz") : (n.to_s)}
testrun.test(fbproc)