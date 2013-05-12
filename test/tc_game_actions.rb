require './test/test_helper'
require 'test/unit'
require './lib/game_actions'
require './lib/card_deck'
require './lib/player'



class TestGameActions < Test::Unit::TestCase
  
  def setup
    @deck = CardDeck.new
    @player = Player.new "Eytan"
    @dealer = Player.new "Dealer"
    @game_actions = GameActions.new(@deck, @player, @dealer)
  end
  
  def test_number_of_decks
    assert_equal 1, @game_actions.number_of_decks
  end
  
  def test_number_of_players
    assert_equal 1, @game_actions.number_of_players
  end
  
  def test_init
    assert_equal(1, @game_actions.number_of_decks)
    assert_equal(1, @game_actions.number_of_players)
    assert_not_nil @game_actions.dealer
  end
  
  def test_deal
    first_player_card = @deck[0]
    first_dealer_card = @deck[1]
    second_player_card = @deck[2]
    second_dealer_card = @deck[3]
    @game_actions.deal()
    assert @player.hand.include? first_player_card
    assert @player.hand.include? second_player_card
    assert @dealer.hand.include? first_dealer_card
    assert @dealer.hand.include? second_dealer_card
  end
  
end