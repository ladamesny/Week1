class Temperature

  CONVERSIONFRACTION = 5.0/9.0
  DIFFERENCE = 32

  def in_celsius temp
    raise ArgumentError unless ((temp.is_a? Fixnum) || (temp.is_a? Float))
    c = (CONVERSIONFRACTION * (temp-DIFFERENCE))
    c
  end
end
temperature = Temperature.new
fahrenheit = 100.0
lineWidth = 10

puts "Fahrenheit".ljust(lineWidth) + "Celsius".rjust(lineWidth)

141.times do
  puts fahrenheit.to_s.ljust(lineWidth) + temperature.in_celsius(fahrenheit).round(3).to_s.rjust(lineWidth)
  fahrenheit -=1
end