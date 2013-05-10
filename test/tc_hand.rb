require 'test/unit'
require './lib/hand'
require './lib/card'

class TestHand < Test::Unit::TestCase
  
  def setup
    @hand = Hand.new
    @hand.add_card(Card.new('S','5'))
    @hand.add_card(Card.new('D', 'K'))
    @hand_with_ace = Hand.new
    @hand_with_ace.add_card(Card.new('S', 'A'))
    @hand_with_ace.add_card(Card.new('Q', '4'))
  end
  
  def test_add_card_to_hand
    @hand.add_card(Card.new('H', '7'))
    assert(@hand.number_of_cards == 3)
    assert_equal(22, @hand.score)
  end
  
  def test_score
    assert_equal(15, @hand.score)
    
    assert_equal(15, @hand_with_ace.score)
    
    hand_with_ace_going_over_21 = Hand.new
    hand_with_ace_going_over_21.add_card(Card.new('S', 'A'))
    hand_with_ace_going_over_21.add_card(Card.new('Q', 'A'))
    assert_equal(12, hand_with_ace_going_over_21.score)
  end
  
  def test_include_ace?
    assert_equal(false, @hand.include_ace?)
    assert_equal(true, @hand_with_ace.include_ace?)
  end

  
  def test_add_ace_to_hand_that_passes_21
    @hand.add_card(Card.new('D', 'A'))
    assert(@hand.number_of_cards == 3)
    assert_equal(16, @hand.score)
  end
  
  def test_include?
    assert(@hand.include?(Card.new('S', '5')))
    assert(@hand.include?(Card.new('D', 'K')))
    assert_equal(false, @hand.include?(Card.new('S', 'K')))
    assert_equal(false, @hand.include?(Card.new('D', '5')))
  end
  
end