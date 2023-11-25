# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  if n == 1
    return 1
  end
  ans = {}
  temp = {}
  for item in trust
    if ans.has_key?(item[1])
      ans[item[1]].push(item[0])
    else
      ans[item[1]] = [item[0]]
    end
    temp[item[0]] = item[1]
  end
  for item in trust
    if ans[item[1]].length == n - 1 and not temp.has_key?(item[1])
      return item[1]
    end
  end
  return -1
end
