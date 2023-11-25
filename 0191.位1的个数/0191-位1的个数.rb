# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  m = n.to_s(2)
  counts = 0
  for i in 0...m.length
    if m[i].to_i & 1 == 1
      counts += 1
    end
  end
  counts
end
