# @param {Integer} n
# @return {Integer}
def alternate_digit_sum(n)
  m = n.to_s
  ans = 0
  for i in 0...m.length
    if i % 2 == 0
      ans += m[i].to_i
    else
      ans -= m[i].to_i
    end
  end
  ans
end
