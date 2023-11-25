# @param {Integer} num
# @param {Integer} k
# @return {Integer}
def divisor_substrings(num, k)
  m = num.to_s
  ret = 0
  for i in 0...m.length - k + 1
    if m[i, k].to_i != 0
      if num % m[i, k].to_i == 0
        ret += 1
      end
    end
  end
  ret
end
