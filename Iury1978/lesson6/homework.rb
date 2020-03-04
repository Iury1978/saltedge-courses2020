# problem 1
# Use the each method of Array to
# iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version

a.each { |x| print x }

# one line version with space
# puts " " only for print from new stroke

puts " "
a.each { |x| print x, " " }

# multi-line version 1

puts " "
a.each do |number|
  puts number
end

# multi-line version 2

puts " "
a.each { |x| puts x }

# Problem 2
#Same as above, but only print out values greater than 5.
puts " "
puts " Problem 2 "

 b = a.select do |v|
    v>5 
 end

b.each { |x| print x }

# Problem 3
# using the same array from #2, use the select method to extract all odd numbers into a new array.
puts " "
puts " Problem 3"
c = b.select do |num|
  num.odd?
end
c.each { |q| print q }

#Problem 4
#Append 11 to the end of the original array. Prepend 0 to the beginning.
puts " "
puts " Problem 4"

d = [0] + a<<11
puts d

#Problem 5
#Get rid of 11. And append a 3.
puts " "
puts " Problem 5"
e = d - [11] + [3]
puts e

#Problem 6
#Get rid of duplicates without specifically removing any one value.
puts " "
puts " Problem 6"
f = e.uniq
puts f

#Problem 7
#Tell what's the major difference between an Array and a Hash?
puts " "
puts " Problem 7"

puts "Хеш подобен классу Array, за исключением того, что индексация осуществляется через ключи (объекты любого типа), а не через целочисленные индексы." 

#Problem 8
#Suppose you have a hash h = { a:1, b:2, c:3, d:4 }
#Get the value of key :b.
#Add to this hash the key:value pair {e:5}
#Remove all key:value pairs whose value is less than 3.5

puts " "
puts " Problem 8 "
h = { a:1, b:2, c:3, d:4 }
puts h1 = h[:b]
puts " "
h2 =  { e:5}
h3 = h.merge(h2)
puts h3
puts " "
h4 = h3.select {|k,v| v > 3.5 }
puts h4
#Problem 9
puts " "
puts " Problem 9"
#Can hash values be arrays? Can you have an array of hashes? (give examples)
puts " "
puts " Can hash values be arrays?- Yes "
hash  = { "a"=>["a", "b", "c"], "b"=>["b", "c"] }
puts hash

#Problem 10
#Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.
#contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
#contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

puts " "
puts " Problem 10 "
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]] 
contact1 = {":e-mail" => contact_data[0][0].to_s}, {":adress" => contact_data[0][1].to_s},{":phone" => contact_data[0][2].to_s}
contact2 = {":e-mail" => contact_data[1][0].to_s}, {":adress" => contact_data[1][1].to_s},{":phone" => contact_data[1][2].to_s}
puts contacts = {"Joe Smith" => contact1, "Sally Johnson" => contact2}
#Problem 11
#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
puts " "
puts " Problem 11"

puts contacts["Joe Smith"][0]
puts contacts["Sally Johnson"][2]

