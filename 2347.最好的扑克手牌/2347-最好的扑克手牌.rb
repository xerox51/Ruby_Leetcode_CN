# @param {Integer[]} ranks
# @param {Character[]} suits
# @return {String}
def best_hand(ranks, suits)
  if suits.uniq.length == 1
    return "Flush"
  elsif ranks.uniq.any? { |item| ranks.count(item) >= 3 }
    return "Three of a Kind"
  elsif ranks.uniq.any? { |item| ranks.count(item) == 2 }
    return "Pair"
  elsif ranks.uniq.length == 5
    return "High Card"
  end
end
