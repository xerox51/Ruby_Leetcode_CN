# @param {String[]} words
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def vowel_strings(words, left, right)
  ans = 0
  left.upto(right) do |i|
    if ["a", "e", "i", "o", "u"].include?(words[i][0]) && ["a", "e", "i", "o", "u"].include?(words[i][-1])
      ans += 1
    end
  end
  ans
end
