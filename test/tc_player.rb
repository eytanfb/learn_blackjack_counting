require 'test/unit'
require './lib/player'
require './lib/card'

class TestPlayer < Test::Unit::TestCase
  
  def setup
    @player = Player.new "Eytan"
    @dealer = Player.new "Dealer"
  end
  
  def test_hand
    assert_nil @player.hand
    assert_nil @dealer.hand
  end
  
  def test_name
    assert_equal "Eytan", @player.name
    assert_equal "Dealer", @dealer.name    
  end
  
  def test_receive_card
    card = Card.new "H", "Q"
    @player.receive_card card
    assert(@player.hand.include?(card))
  end
end