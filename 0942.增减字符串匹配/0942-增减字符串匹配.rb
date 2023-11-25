# @param {String} s
# @return {Integer[]}
def di_string_match(s)
  lo, hi, n = 0, s.length, s.length
  perm = Array.new(n + 1, 0)
  for i in 0...s.length
    if s[i] == "I"
      perm[i] = lo
      lo += 1
    else
      perm[i] = hi
      hi -= 1
    end
  end
  perm[n] = lo
  return perm
end
