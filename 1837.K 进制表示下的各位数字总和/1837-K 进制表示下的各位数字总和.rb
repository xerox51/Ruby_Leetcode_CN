# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def sum_base(n, k)
  m = n.to_s(k)
  ans = 0
  for i in 0...m.length
    ans += m[i].to_i
  end
  ans
end
