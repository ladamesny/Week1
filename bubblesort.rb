numbers = [9, 44, 3, 65, 17, 32, 0, -5]

index = 0
iteration = 0

while iteration < numbers.size
  while index < numbers.size
    if numbers[index+1] != nil
      if numbers[index] > numbers[index+1]
        temp = numbers[index+1]
        numbers[index+1] = numbers[index]
        numbers[index] = temp
      end
    end
    index +=1
  end
  iteration +=1
  index = 0
end

puts numbers.join(",")