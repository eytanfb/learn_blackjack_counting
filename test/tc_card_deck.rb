require './src/card_deck'
require 'test/unit'

class TestCardDeck < Test::Unit::TestCase
  
  def setup
    @card_deck = CardDeck.new
  end
  
  def test_pop_card
    assert_equal(52, @card_deck.count)
    top_card = @card_deck.cards[-1]
    popped_card = @card_deck.pop_card()
    assert_equal(top_card, popped_card)
    assert_equal(51, @card_deck.count)
  end
  
end