class GameActions
  
  attr_reader :dealer
  
  def initialize(deck, players, dealer)
    @deck = deck
    @players = []
    @dealer = dealer
    @players << players
  end
  
  def number_of_decks
    1
  end
  
  def number_of_players
    @players.count
  end
  
  # def deal
  #   2.times do
  #     @players.each(receive_card())
  #   end
  # end
  
end