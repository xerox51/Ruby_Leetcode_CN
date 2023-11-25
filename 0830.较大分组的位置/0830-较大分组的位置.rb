# @param {String} s
# @return {Integer[][]}
def large_group_positions(s)
  cnt = 1
  ans = []
  for i in 0...s.length
    if i == s.length - 1 or s[i] != s[i + 1]
      if cnt >= 3
        ans.push([i - cnt + 1, i])
      end
      cnt = 1
    else
      cnt += 1
    end
  end
  ans
end
