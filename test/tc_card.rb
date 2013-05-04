require './src/card'
require 'test/unit'

class TestCard < Test::Unit::TestCase
  
  def setup
    @card = Card.new('D', 'Q')
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
    puts card
    puts @card.inspect
    assert_equal(card, @card.inspect)
  end
end