require 'test/unit'
require './lib/game_actions'
require './lib/card_deck'
require './lib/player'


class TestGameActions < Test::Unit::TestCase
  
  def setup
    deck = CardDeck.new
    player = Player.new "Eytan"
    dealer = Player.new "Dealer"
    @game_actions = GameActions.new(deck, player, dealer)
  end
  
  def test_init
    assert_equal(1, @game_actions.number_of_decks)
    assert_equal(1, @game_actions.number_of_players)
    assert_not_nil @game_actions.dealer
  end
  
end