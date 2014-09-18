count = 0
File.open("testfile.txt").each do |line|
  count += 1
end

puts count