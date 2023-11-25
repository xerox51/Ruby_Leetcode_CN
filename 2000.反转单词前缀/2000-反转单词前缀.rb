# @param {String} word
# @param {Character} ch
# @return {String}
def reverse_prefix(word, ch)
  if word.index(ch) != nil
    return word[0, word.index(ch) + 1].reverse + word[word.index(ch) + 1, word.length - word.index(ch) - 1]
  end
  return word
end
