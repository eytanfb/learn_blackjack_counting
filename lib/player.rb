require './lib/hand'

class Player
  
  attr_reader :hand, :name
  
  def initialize(name)
    @name = name
    @hand = Hand.new
  end
  
  def receive_card(card)
    @hand.add_card card
  end
  
  def number_of_cards
    @hand.number_of_cards
  end
  
  def see_hand
    @hand.cards.each { |card| print card.print }
  end
  
end