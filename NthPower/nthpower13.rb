puts "Please enter a power"

power = gets.chomp.to_i

puts "Please enter a base"

base = gets.chomp.to_i

result = base
iteration = 1

while iteration < power

  result *= base
  iteration += 1
end

puts result