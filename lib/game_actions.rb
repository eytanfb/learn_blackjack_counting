class GameActions
  
  attr_reader :dealer
  
  def initialize(decks, players, dealer)
    @decks = decks
    @players = []
    @dealer = dealer
    @players << players
  end
  
  def number_of_decks
    @decks.count
  end
  
  def number_of_players
    @players.count
  end
  
end