class Card
  attr_reader :suit, :face
  
  def initialize(suit, face)
    @suit = suit
    @face = face
  end
  
  def print
    "|-------|\n" +
    "|#{suit}     #{suit}|\n" +
    "|       |\n" +
    "|   #{face}   |\n" +
    "|       |\n" +
    "|#{suit}     #{suit}|\n" +
    "|-------|"
  end
  
  def value
    if face == 'A'
      return 11
    elsif face == 'K' || face == 'Q' || face == 'J'
      return 10
    else
      return face.to_i
    end
  end
end