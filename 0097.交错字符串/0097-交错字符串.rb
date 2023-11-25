# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Boolean}
def is_interleave(s1, s2, s3)
  n, m, t = s1.length, s2.length, s3.length
  if n + m != t
    return false
  end
  f = Array.new(m + 1, false)
  f[0] = true
  for i in 0..n
    for j in 0..m
      p = i + j - 1
      if i > 0
        f[j] = f[j] && s1[i - 1] == s3[p]
      end
      if j > 0
        f[j] = f[j] || (f[j - 1] && s2[j - 1] == s3[p])
      end
    end
  end
  f[m]
end
