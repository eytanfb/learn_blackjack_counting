require './src/card'

class CardDeck
  
  def initialize
    @suits = ['Diamonds', 'Spades', 'Clubs', 'Hearts']
    @faces = ['A', '2', '3', '4', '5', '6', '7' , '8', '9', '10', 'J', 'Q', 'K']
    @cards = []
    create_deck()
  end
  
  def pop_card
    @cards.pop()
  end
  
  def count
    @cards.count
  end
  
  def create_deck
    @suits.each do |suit|
      @faces.each do |face|
        @cards.push(Card.new(suit, face))
      end
    end
  end
end