require './lib/card'

class Hand
  
  def initialize
    @cards = []
  end
  
  def score
    score = @cards.map(&:value).inject(0, :+)
    if score > 21 and include_ace?
      return score - 10
    end
    return score
  end
  
  def include_ace?
    for card in @cards
      if card.face == 'A'
        return true
      end
    end
    return false
  end
  
  def add_card(card)
    @cards << card
  end
  
  def number_of_cards
    @cards.count
  end
  
end