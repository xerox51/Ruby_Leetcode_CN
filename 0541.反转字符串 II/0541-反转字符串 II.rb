# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
  if s.length < k
    return s.reverse!
  end
  if s.length >= k and s.length < 2 * k
    s[0, k] = s[0, k].reverse!
    return s
  end
  i = 0
  while i < s.length
    s[i, k] = s[i, k].reverse!
    i += 2 * k
    if s.length - i < k
      s[i, s.length - i] = s[i, s.length - i].reverse!
      break
    end
    if s.length - i < 2 * k and s.length - i >= k
      s[i, k] = s[i, k].reverse!
      break
    end
  end
  s
end
