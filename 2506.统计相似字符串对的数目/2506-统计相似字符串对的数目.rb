# @param {String[]} words
# @return {Integer}
def similar_pairs(words)
  ans = words.map { |item| item.each_char.to_a.uniq.sort }
  temp = ans.uniq
  cnt = temp.map { |item| ans.count(item) }
  total = 0
  for i in cnt
    total += i * (i - 1) / 2
  end
  total
end
