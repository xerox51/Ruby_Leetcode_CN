# @param {String[]} words
# @return {String[]}
def remove_anagrams(words)
  ans = [words[0]]
  for i in 1...words.length
    if words[i].each_char.to_a.sort == words[i - 1].each_char.to_a.sort
      next
    else
      ans.push(words[i])
    end
  end
  ans
end
