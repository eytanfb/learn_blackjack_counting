require './test/test_helper'
require './lib/card_search'
require './lib/card'
require './lib/card_deck'
require 'test/unit'


class TestCardSearch < Test::Unit::TestCase
  
  def test_deck_include?
    card = Card.new 'H', 'A'
    deck = CardDeck.new
    assert CardSearch.include? deck.cards, card
  end  

  
end