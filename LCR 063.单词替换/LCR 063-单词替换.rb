# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
  trie = {}
  for word in dictionary
    cur = trie
    for i in 0...word.length
      unless cur.has_key?(word[i])
        cur[word[i]] = {}
      end
      cur = cur[word[i]]
    end
    cur["#"] = {}
  end
  words = sentence.split(" ")
  for i in 0...words.length
    cur = trie
    for j in 0...words[i].length
      if cur.has_key?("#")
        words[i] = words[i][0, j]
        break
      end
      if not cur.has_key?(words[i][j])
        break
      end
      cur = cur[words[i][j]]
    end
  end
  words.join(" ")
end
