require_relative 'card.rb'

# Poker Hand Evaluation
# TODO: Basically, extend this class (you can create another class, of course!)
class Hand
  attr_reader :cards, :rank

  def initialize(draw_cards)
    @cards = draw_cards.map { |str| Card.new(str) }
    @rank = categorize
  end

  private

  def categorize
    suits = @cards.map {|card| card.suit}
    p suits
    faces = @cards.map {|card| card.face}
    p faces

    
    sort = @cards.map {|card| card.ordinal}.sort
    p sort
     p sort[4] 
    
    if @cards[0].suit == @cards[1].suit && @cards[0].suit == @cards[2].suit && @cards[0].suit == @cards[3].suit && @cards[0].suit == @cards[4].suit
         'flush'
        
   
        
         'flush'
         
    else
         'high-card'
    end
  end
end
