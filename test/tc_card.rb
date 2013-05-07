require './src/card'
require 'test/unit'

class TestCard < Test::Unit::TestCase
  
  def setup
    @face_card = Card.new('D', 'Q')
    @ace_card = Card.new('H', 'A')
    @non_face_card = Card.new('C', '5')
  end
  
  def test_initialize
    assert_equal('D', Card.new('D', nil).suit)
    assert_equal('Q', Card.new(nil, 'Q').face)
  end
  
  def test_print_card
    card = "|-------|\n" +
           "|D     D|\n" +
           "|       |\n" +
           "|   Q   |\n" +
           "|       |\n" +
           "|D     D|\n" +
           "|-------|"
    assert_equal(card, @face_card.print)
  end
  
  def test_card_value
    assert_equal(10, @face_card.value)
    assert_equal(11, @ace_card.value)
    assert_equal(5, @non_face_card.value)
  end
end