# @param {Integer[]} cards
# @param {Integer} cnt
# @return {Integer}
def maxmium_score(cards, cnt)
  odd = 1.0 / 0.0
  even = 1.0 / 0.0
  sum = 0
  cards.sort!
  (cards.length - 1).downto(cards.length - cnt) do |i|
    if (cards[i] & 1) == 0
      even = cards[i]
    else
      odd = cards[i]
    end
    sum += cards[i]
  end
  if (sum & 1) == 0
    return sum
  end
  max_t = 0
  (cards.length - cnt - 1).downto(0) do |i|
    if ((cards[i] & 1) == 0) && (!odd.to_f.infinite?)
      max_t = [max_t, sum + cards[i] - odd].max
    elsif ((cards[i] & 1) == 1) && (!even.to_f.infinite?)
      max_t = [max_t, sum + cards[i] - even].max
    end
  end
  max_t
end
