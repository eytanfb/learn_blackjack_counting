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
  
  # def see_hand
  #   @hand.cards.each { |card| card.print_card }
  # end
  
end