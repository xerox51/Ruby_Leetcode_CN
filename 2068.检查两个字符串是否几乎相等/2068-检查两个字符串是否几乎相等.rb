# @param {String} word1
# @param {String} word2
# @return {Boolean}
def check_almost_equivalent(word1, word2)
  temp = word1.dup
  temp << word2.dup
  temp.squeeze.each_char do |c|
    if (word1.count(c) - word2.count(c)).abs > 3
      return false
    end
  end
  return true
end
