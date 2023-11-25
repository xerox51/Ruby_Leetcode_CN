# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
  n, m = s1.length, s2.length
  if n > m
    return false
  end
  cnt = Array.new(26, 0)
  for i in 0...s1.length
    cnt[s1[i].ord - "a".ord] -= 1
  end
  left = 0
  for j in 0...s2.length
    x = s2[j].ord - "a".ord
    cnt[x] += 1
    while cnt[x] > 0
      cnt[s2[left].ord - "a".ord] -= 1
      left += 1
    end
    if j - left + 1 == n
      return true
    end
  end
  return false
end
