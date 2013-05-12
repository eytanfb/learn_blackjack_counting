require './test/test_helper'
require 'test/unit'
require './lib/player'
require './lib/card'
require './lib/card_search'

class TestPlayer < Test::Unit::TestCase
  
  def setup
    @player = Player.new "Eytan"
    @dealer = Player.new "Dealer"
    @card = Card.new "H", "Q"
  end
  
  def test_name
    assert_equal "Eytan", @player.name
    assert_equal "Dealer", @dealer.name    
  end
  
  def test_receive_card
    @player.receive_card @card
    assert CardSearch.include? @player.hand.cards, @card
    assert_equal 1, @player.number_of_cards
  end
  
  def test_see_hand
    @player.receive_card @card
    @player.receive_card @card
    print "\n"
    assert @player.hand.cards.each { |card| print card.print } == @player.see_hand
  end
  
end