# @param {String} s
# @return {Integer}
def min_operations(s)
  total = 0
  for i in 0...s.length
    if i % 2 == s[i].to_i
      total += 1
    end
  end
  if total <= s.length - total
    return total
  else
    return s.length - total
  end
end
