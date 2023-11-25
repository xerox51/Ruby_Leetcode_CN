# @param {String} s
# @return {Integer}
def minimum_steps(s)
  ans = 0
  cnt1 = 0
  for i in 0...s.length
    if s[i] == "1"
      cnt1 += 1
    else
      ans += cnt1
    end
  end
  ans
end
