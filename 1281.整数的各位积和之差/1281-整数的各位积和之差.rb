# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
  m = n.to_s(10)
  total = 0
  multiply = 1
  for i in 0...m.length
    total += m[i].to_i
    multiply *= m[i].to_i
  end
  return multiply - total
end
