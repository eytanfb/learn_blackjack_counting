class Card
  attr_reader :suit, :face
  
  def initialize(suit, face)
    @suit = suit
    @face = face
  end
  
  def inspect
    "|-------|\n" +
    "|#{suit}     #{suit}|\n" +
    "|       |\n" +
    "|   #{face}   |\n" +
    "|       |\n" +
    "|#{suit}     #{suit}|\n" +
    "|-------|"
  end
end