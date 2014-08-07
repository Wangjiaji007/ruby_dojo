class BlackJack
  def scoreHand cards
    cards.map!{|card| card = '10' if ['J','Q','K'].include?(card); card}
    num_of_A = cards.count('A')
    sum = cards.reduce(0) do |sum,card|
      card = '1' if card == 'A'
      sum + card.to_i
    end

    num_of_A.times do
      return sum if (sum + 10)>21
      sum += 10
    end


    sum
  end
end
