require_relative "./Iury_card"


class Hand
	
  def initialize
    @array = []
   
  
  end

   def add_card(card1, card2)
  	 @array << card1
  	 @array << card2
  end

  def get_points
    @array.sum { |card| card.point }
  end
  

end


=begin
hand = Hand.new
p1 = Card.new(point: 10, suit: :clubs)
p2 = Card.new(point: 11, suit: :hearts)

puts hand.add_card(p1,p2)
puts p1.point
puts p2.suit

puts hand.get_points
=end