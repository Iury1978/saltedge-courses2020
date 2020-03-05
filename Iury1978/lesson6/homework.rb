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
puts " Upd"
puts " Главное отличие - в хэше ключом может быть любой объект(удобно, что он может описывать информацию, которая за ним скрывается, в массиве же индекс - целое число." 
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
#Problem 12
#Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
#arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
#Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

puts " "
puts " Problem 12.1"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr_print =arr.delete_if{|x| x.start_with?("s")}
puts arr_print
puts ""
puts " Problem 12.2"
arr_print1 =arr.delete_if{|x| x.start_with?("s","w")}
puts arr_print1

#Problem 13
#Take the following array:
#a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
#and turn it into a new array that consists of strings containing one word.
#(ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
puts " "
puts " Problem 13 "
a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
print a.collect { |x| x.split(" ") }.flatten
#Problem 14
#What will the following program output?
#hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
#hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

#if hash1 == hash2 
#puts "These hashes are the same!"
#else puts "These hashes are not the same!"
#end

puts ""
puts " Problem 14"
puts " Эта программа  сравнивает 2 хэша на предмет их равенства. Для равенства необходимо,  что бы  они содержали одинаковое количество ключей и каждая пара ключ- значение была эквивалентна, пары ключ- значение необязательно должны идти в одинаковом порядке для равенства, но в нашем примене совпадает и количество ключей и их порядок. Поэтому результат работы программы These hashes are the same! "

puts " "
# Problem 15
#Programmatically loop or iterate over the contacts hash from exercise 10, and populate the associated data from the contact_data array.
#Hint: you will probably need to iterate over ([:email, :address, :phone]), some helpful methods might be the Array shift and first methods.

puts " "
puts " Problem 15"

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
# сначала пробовал так, пока не понял как вызывать shift в массиве, содержащим массивы
# a=0
# b=0
# loop do
#    puts "Joe Smith " + contact_data[a][b].to_s
#    puts "Sally Johnson  " + contact_data[a+1][b].to_s
# b +=1
#    break if b ==3
# end

a = 1
while a < 4
   puts "Joe Smith " + contact_data[0].shift.to_s
   puts "Sally Johnson " + contact_data[1].shift.to_s
a += 1
   end

