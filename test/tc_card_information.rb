require './src/card_information'
require 'test/unit'

class TestCardInformation < Test::Unit::TestCase
  
  def setup
    @card_info = CardInformation.new
  end
  
  def test_card_suits
    expected = ['D', 'S', 'H', 'C'].sort
    actual = @card_info.suits
    assert_equal(expected, actual)
  end
  
  def test_card_faces
    expected = ['A', '2', '3', '4', '5', '6', '7' , '8', '9', '10', 'J', 'Q', 'K']
    actual = @card_info.faces
    assert_equal(expected, actual)
  end
  
  def test_card_values
    expected = [1, 11]
    actual = @card_info.values['A']
    assert_equal(expected, actual)
    
    expected = 2
    actual = @card_info.values['2']
    assert_equal(expected, actual)

    expected = 3
    actual = @card_info.values['3']
    assert_equal(expected, actual)    
  end
  
end