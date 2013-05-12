require 'test/unit'
require './lib/game_actions'
require './lib/card_deck'
require './lib/player'
require './lib/card_search'



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
    assert_equal 1, @game_actions.number_of_decks
    assert_equal 52, @deck.number_of_cards
    assert_equal 1, @game_actions.number_of_players
    assert_equal 0, @player.hand.number_of_cards
    assert_equal 0, @dealer.hand.number_of_cards
    assert_not_nil @game_actions.dealer
  end
  
  def test_deal
    first_player_card = @deck.cards[-1]
    first_dealer_card = @deck.cards[-2]
    second_player_card = @deck.cards[-3]
    second_dealer_card = @deck.cards[-4]
    @game_actions.deal()
    assert CardSearch.include? @player.hand.cards, first_player_card
    assert CardSearch.include? @player.hand.cards, second_player_card
    assert CardSearch.include? @dealer.hand.cards, first_dealer_card
    assert CardSearch.include? @dealer.hand.cards, second_dealer_card
    assert_equal 48, @deck.number_of_cards
    assert_equal 2, @player.hand.number_of_cards
    assert_equal 2, @dealer.hand.number_of_cards
  end
  
end