
count = 0
File.open("testfile.txt").each do |line|
  if line[0] == '#'
    count += 1
  end
end

puts count
