require 'test/unit'
require './lib/player'
require './lib/card'

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
    assert @player.hand.include?(@card)
    assert_equal 1, @player.number_of_cards
  end
  
  def test_see_hand
    @player.receive_card @card
    @player.receive_card @card
    print "\n"
    assert 2.times { print @card.print } == @player.see_hand
    
  end
  
end