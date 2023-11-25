# @param {String[]} words
# @return {String}
def longest_word(words)
  words.sort_by! { |element| element.length }
  i = 0
  while i < words.length
    j = i
    while j < words.length
      if j < words.length - 1 and words[j].length == words[j + 1].length and words[j] < words[j + 1]
        words[j], words[j + 1] = words[j + 1], words[j]
      end
      j += 1
    end
    i += 1
  end
  longest = ""
  candidates = [""]
  i = 0
  while i < words.length
    word = words[i]
    if candidates.include?(word[0, word.length - 1])
      candidates.push(word)
      longest = word
    end
    i += 1
  end
  longest
end
