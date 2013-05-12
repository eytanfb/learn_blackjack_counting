require './test/test_helper'
require './lib/card_deck'
require './lib/card_search'
require 'test/unit'


class TestCardDeck < Test::Unit::TestCase
  
  def setup
    @card_deck = CardDeck.new
    @top_card = @card_deck.cards[-1]
  end
  
  def test_pop_card
    assert_equal(52, @card_deck.count)
    popped_card = @card_deck.pop_card()
    assert_equal(@top_card, popped_card)
    assert_equal(51, @card_deck.count)
    assert(CardSearch.include?(@card_deck.cards, popped_card) == false)
  end
    
end