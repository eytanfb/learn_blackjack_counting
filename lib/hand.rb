require './lib/card'

class Hand
  
  attr_reader :cards
  
  def initialize
    @cards = []
  end
  
  def score
    score = @cards.map(&:value).inject(0, :+)
    score -= 10 if score > 21 and include_ace?
    score
  end
  
  def include_ace?
    @cards.each { |card| return true if card.face == 'A' }
    false
  end
  
  def add_card(card)
    @cards << card
  end
  
  def number_of_cards
    @cards.count
  end
  
end