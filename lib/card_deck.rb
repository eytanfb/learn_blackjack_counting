require './lib/card'
require './lib/card_information'

class CardDeck
  
  attr_reader :cards
  
  def initialize
    @card_info = CardInformation.new
    @cards = []
    create_deck
  end
  
  def pop_card
    @cards.pop()
  end
  
  def number_of_cards
    @cards.count
  end
  
  private
  
  def create_deck
    @card_info.suits.each do |suit|
      @card_info.faces.each do |face|        
        @cards << Card.new(suit, face)
      end
    end
  end
end