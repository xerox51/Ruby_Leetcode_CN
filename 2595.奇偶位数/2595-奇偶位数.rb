# @param {Integer} n
# @return {Integer[]}
def even_odd_bit(n)
  m = n.to_s(2).reverse
  ans = [0, 0]
  for i in 0...m.length
    if i % 2 == 0 and m[i] == "1"
      ans[0] += 1
    elsif i % 2 == 1 and m[i] == "1"
      ans[1] += 1
    end
  end
  ans
end
