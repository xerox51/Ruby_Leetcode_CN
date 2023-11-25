# @param {String[]} words
# @param {String} word1
# @param {String} word2
# @return {Integer}
def find_closest(words, word1, word2)
  ans = words.length
  index1, index2 = -1, -1
  for i in 0...words.length
    if words[i] == word1
      index1 = i
    elsif words[i] == word2
      index2 = i
    end
    if index1 >= 0 and index2 >= 0
      ans = [ans, (index2 - index1).abs].min
    end
  end
  return ans
end
