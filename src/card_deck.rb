require './src/card'
require './src/card_information'

class CardDeck
  
  def initialize
    @card_info = CardInformation.new
    @cards = []
    create_deck()
  end
  
  def pop_card
    @cards.pop()
  end
  
  def count
    @cards.count
  end
  
  private
  
  def create_deck
    @card_info.suits do |suit|
      @card_info.faces do |face|
        @cards.push(Card.new(suit, face))
      end
    end
  end
end