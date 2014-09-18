require_relative 'hashclass'

class Person

  attr_accessor :name, :address

  def initialize n, a
    @name = n
    @address = a
  end

end

f = File.new("textfile.txt", "r")
people = MyHash.new
unadded_people =[]
f.each do |line|
  record = line.split(',') #[name, address]
  if people.has_key?(record[0])
      unadded_people << Person.new(record[0], record[1])
  else
    people.add_record(record[0], Person.new(record[0], record[1]))
  end
end

record_num = 0
people.each do |key, value|
  record_num +=1
  puts "#{record_num}. Name: #{key} --- Address: #{value.address}"
end

if !unadded_people.empty?
  puts "\nThe following duplicate records were found and not added to the hash\n"
  record_num = 0
  unadded_people.each do |person|
    record_num +=1
    puts "#{record_num}. Name: #{person.name} --- Address: #{person.address}"
  end
end

puts "No of duplicates #{unadded_people.length}"
