# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Integer}
def find_minimum_operations(s1, s2, s3)
  a, b, c = s1.length, s2.length, s3.length
  d = [a, b, c].max
  t = 0
  for i in 0...d
    if i == 0 && (s1[i] != s2[i] || s1[i] != s3[i] || s2[i] != s3[i])
      return -1
    end
    if s1[i] == s2[i] && s2[i] == s3[i]
      t += 1
    end
    if s1[i] != s2[i] || s1[i] != s3[i] || s2[i] != s3[i]
      break
    end
  end
  return [a - t, b - t, c - t].sum
end
