require 'test/unit'
require './lib/game_actions'
require './lib/card_deck'

class TestGameActions < Test::Unit::TestCase
  
  def setup
    decks = [CardDeck.new, CardDeck.new]
    @game_actions = GameActions.new(decks)
  end
  
end