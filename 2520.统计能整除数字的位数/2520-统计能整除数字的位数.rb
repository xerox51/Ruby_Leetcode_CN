# @param {Integer} num
# @return {Integer}
def count_digits(num)
  s = num.to_s
  ans = 0
  for i in 0...s.length
    if num % s[i].to_i == 0
      ans += 1
    end
  end
  ans
end
