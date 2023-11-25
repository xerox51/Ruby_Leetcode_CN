# @param {Integer} total
# @param {Integer} cost1
# @param {Integer} cost2
# @return {Integer}
def ways_to_buy_pens_pencils(total, cost1, cost2)
  c1 = total / cost1
  ans = 0
  for i in 0..c1
    tmp = total - i * cost1
    it = tmp / cost2 + 1
    ans += it
  end
  ans
end
