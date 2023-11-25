# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  if word1.length >= word2.length
    s = ""
    for i in 0...word1.length
      if i < word2.length
        s << word1[i]
        s << word2[i]
      else
        s << word1[i]
      end
    end
    s
  else
    s = ""
    for i in 0...word2.length
      if i < word1.length
        s << word1[i]
        s << word2[i]
      else
        s << word2[i]
      end
    end
    s
  end
end
