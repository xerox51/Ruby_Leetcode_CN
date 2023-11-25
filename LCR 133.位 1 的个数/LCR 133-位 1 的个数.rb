# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  ret = (0..31).to_a.map { |i| if n & (1 << i) != 0 then 1 else 0 end }
  ret.sum
end
