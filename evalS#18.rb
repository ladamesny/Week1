def my_sum n

  s = 1

  i = 1

  while i <= n
    s += (1/i)**2
    i+=1
  end

  s *= 6
  result = Math.sqrt(s)

end

puts my_sum(1000)