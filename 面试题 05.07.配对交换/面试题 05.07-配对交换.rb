# @param {Integer} num
# @return {Integer}
def exchange_bits(num)
  s = num.to_s(2)
  n = s.length
  if n % 2 == 1
    s = ["0", s].join
  end
  m = s.length
  ans = ""
  (0...m).step(2) do |i|
    ans << s[i + 1]
    ans << s[i]
  end
  total = 0
  for i in 0...ans.length
    if ans[i] == "1"
      total += 2 ** (ans.length - 1 - i)
    end
  end
  total
end
