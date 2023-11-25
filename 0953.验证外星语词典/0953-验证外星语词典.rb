# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
  h = {}
  for i in 0...order.length
    h[order[i]] = i + 1
  end
  ans = []
  for item in words
    temp = []
    item.each_char.to_a.each do |a|
      temp.push(h[a])
    end
    ans.push(temp)
  end
  sorted_ans = ans.sort_by { |element| element }
  return sorted_ans == ans
end
