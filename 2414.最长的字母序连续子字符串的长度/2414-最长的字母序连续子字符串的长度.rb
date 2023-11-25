# @param {String} s
# @return {Integer}
def longest_continuous_substring(s)
  ans = []
  flag = []
  for i in 0...s.length
    ans.push(s[i].ord)
  end
  if s.length == 1
    return 1
  end
  temp = 1
  for j in 0...ans.length
    if j < ans.length - 1 and ans[j + 1] == ans[j] + 1
      temp += 1
    elsif j < ans.length - 1 and ans[j + 1] != ans[j] + 1
      flag.push(temp)
      temp = 1
    elsif j == ans.length - 1 and ans[j - 1] + 1 == ans[j]
      flag.push(temp)
    end
  end
  flag.max
end
