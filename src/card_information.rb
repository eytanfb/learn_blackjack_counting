class CardInformation
  
  attr_reader :suits, :faces, :values
  
  def initialize
    @suits = ['D', 'C', 'S', 'H'].sort
    @faces = ['A', '2', '3', '4', '5', '6', '7' , '8', '9', '10', 'J', 'Q', 'K']
  end
  
end