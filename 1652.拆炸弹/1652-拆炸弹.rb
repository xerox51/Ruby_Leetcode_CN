# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
  if k > 0
    ans = []
    for i in 0...code.length
      if code.length - i > k
        ans.push(code[i + 1, k].sum)
      else
        ans.push(code[i + 1, code.length - i - 1].sum + code[0, k - code.length + i + 1].sum)
      end
    end
    return ans
  elsif k == 0
    ans = Array.new(code.length, 0)
    return ans
  else
    k1 = -k
    ans = []
    for i in 0...code.length
      if k1 - i <= 0
        ans.push(code[i - k1, k1].sum)
      else
        ans.push(code[0, i].sum + code[-k1 + i, k1 - i].sum)
      end
    end
    return ans
  end
end
