module CardSearch
  
  def CardSearch.include?(cards, card)
    cards.each do |card_in_cards|
      return true if card.face == card_in_cards.face && card.suit == card_in_cards.suit
    end
    return false
  end
  
end