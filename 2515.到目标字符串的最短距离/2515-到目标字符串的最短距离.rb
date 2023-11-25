# @param {String[]} words
# @param {String} target
# @param {Integer} start_index
# @return {Integer}
def closet_target(words, target, start_index)
  ans, n = words.length, words.length
  for i in 0...words.length
    if words[i] == target
      ans = [ans, (i - start_index).abs, n - (i - start_index).abs].min
    end
  end
  if ans < n
    return ans
  else
    return -1
  end
end
