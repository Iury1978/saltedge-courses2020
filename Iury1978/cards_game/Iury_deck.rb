require_relative "./Iury_card"
require_relative "./Iury_hand"

class Deck
  def initialize
    @cards = Card::SUITS.each_with_object([]) do |suit, cards|
      Card::POINTS.each do |point|
        cards << Card.new(point: point, suit: suit)
      end
     
    end

  end

  def cards_count 
    @cards.count
  end
  def draw1
    # первый игрок берет карту 
    @cards[0]
  end
  def draw2
    # второй игрок берет карту
    @cards[1]
  end
  def shift_deck
    # убираем обе карты, если у них разные значения
    @cards.shift(2)
  end

  def shuffle!
    @cards.shuffle!
  end
end
