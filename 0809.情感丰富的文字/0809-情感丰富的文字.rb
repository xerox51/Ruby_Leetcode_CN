def expressive_words(s, words)
  ans = 0
  for item in words
    if expand(s, item)
      ans += 1
    end
  end
  ans
end

def expand(s, t)
  n, m = s.length, t.length
  i, j = 0, 0
  while i < n and j < m
    if s[i] != t[j]
      return false
    end
    ch = s[i]
    cnt = 0
    while i < n and s[i] == ch
      cnt += 1
      i += 1
    end
    cntj = 0
    while j < m and t[j] == ch
      cntj += 1
      j += 1
    end
    if cnt < cntj or (cnt > cntj and cnt < 3)
      return false
    end
  end
  return i == n && j == m
end
