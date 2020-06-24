
class Person
  attr_reader :name
  def initialize(name)
    @name = name
   
  end

  def greet(other_person)
    puts "Hello, #{other_person.name}! I am #{@name}!"
  end
=begin
puts " Player1  Enter your name"
player1 = gets.chomp
puts " Player2  Enter your name"
player2 = gets.chomp



puts "let's decide who draws the first card"
a = [player1, player2]

first = a.sample
a.first == first ? second = a.last : second = a.first 
a.delete(first)
puts "Let's play! #{first} takes the card first, but #{second} second"
=end
end


