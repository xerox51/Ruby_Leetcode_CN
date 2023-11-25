# @param {String} word
# @return {Integer}
def count_vowel_substrings(word)
  n = word.length
  ans = 0
  letter = ["a", "e", "i", "o", "u"]
  for i in 0...n
    every = []
    for j in i...n
      every.push(word[j])
      if every.uniq.sort == letter.sort
        ans += 1
      end
    end
  end
  ans
end
