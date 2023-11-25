# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
  h = Hash.new(indices.length)
  for i in 0...indices.length
    h[indices[i]] = s[i]
  end
  a = h.to_a.sort!
  for i in 0...s.length
    s[i] = a[i][1]
  end
  s
end
