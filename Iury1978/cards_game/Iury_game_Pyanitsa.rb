require_relative "./Iury_person"
require_relative "./Iury_card"
require_relative "./Iury_deck"
require_relative "./Iury_points"

puts " Player1  Enter your name"
player1 = gets.chomp.capitalize
puts " Player2  Enter your name"
player2 = gets.chomp.capitalize
p1 = Person.new("#{player1}")
p2 = Person.new("#{player2}")

p1.greet(p2)
p2.greet(p1)
puts "let's decide who draws the first card"
mass_players = [player1, player2]
first = mass_players.sample
mass_players.delete(first)
puts "Let's play! #{first} takes the card first"

deck = Deck.new
	deck.shuffle!
points = Points.new
while deck.cards_count != 0

player1_card = deck.draw1
puts " #{first}  Your card is #{player1_card.point}    #{player1_card.suit}"
player2_card = deck.draw2
puts " #{mass_players.join}  Your card is #{player2_card.point}    #{player2_card.suit}"
puts " Cards left in the deck    #{deck.cards_count} "
hand = Hand.new

	if player1_card.point != player2_card.point
		deck.shift_deck
		hand.add_card(player1_card, player2_card)
		#puts hand.get_points.class
		#sleep 1
		puts " The total points in this round #{hand.get_points}\n\n"
		
		(player1_card.point > player2_card.point)? points.total_1(hand.get_points) : points.total_2(hand.get_points)

	else
		deck.cards_count != 2 ? ( puts "\n\n\n equally. Cards shuffled \n\n\n"
		 deck.shuffle! ): break
	end
	end
sleep 2
puts "\n\n Wait, we count points\n\n"
sleep 2
puts " Congratulations!!!"

if (points.a > points.b)
	puts " #{first} win #{points.a} - #{points.b}" 
elsif points.a < points.b
 puts "#{mass_players.join} win #{points.b} - #{points.a}"
 else
 puts "Draw #{points.a} - #{points.b}" 
 end