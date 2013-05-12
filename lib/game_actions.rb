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
  
  def deal
    2.times do
      @players.each do |player|
        puts player.name
        card = @deck.pop_card()
        puts "card is " + card.suit + " " + card.face
        player.receive_card card
        puts player.see_hand
      end
      puts @dealer.name
      card = @deck.pop_card()
      puts "card is " + card.suit + " " + card.face
      @dealer.receive_card card
      puts @dealer.see_hand
    end
  end
  
end