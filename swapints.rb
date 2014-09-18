puts "Please enter two integers"

a = gets.chomp.to_i
b = gets.chomp.to_i

a = a + b
b = a - b
a = a - b
puts "a is now #{a} and b is now #{b}"