# @param {String[]} words
# @param {String} pattern
# @return {String[]}
def find_and_replace_pattern(words, pattern)
  ans = find_pattern(pattern)
  temp = []
  for item in words
    if find_pattern(item) == ans
      temp.push(item)
    end
  end
  return temp
end

def find_pattern(pattern)
  h = {}
  for i in 0...pattern.length
    if h.has_key?(pattern[i])
      h[pattern[i]].push(i)
    end
    unless h.has_key?(pattern[i])
      h[pattern[i]] = [i]
    end
  end
  return h.values
end
