# @param {String} s
# @return {String}
def reverse_words(s)
  ans = s.split
  for item in ans
    reverse_word(item)
  end
  ans.join(" ")
end

def reverse_word(word)
  for i in 0...word.length / 2
    word[i], word[word.length - i - 1] = word[word.length - i - 1], word[i]
  end
end
