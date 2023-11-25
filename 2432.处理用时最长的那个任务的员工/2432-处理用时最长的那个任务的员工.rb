# @param {Integer} n
# @param {Integer[][]} logs
# @return {Integer}
def hardest_worker(n, logs)
  ans = {}
  ans[logs[0][0]] = logs[0][1]
  for i in 1...logs.length
    if ans.has_key?(logs[i][0])
      ans[logs[i][0]] = [ans[logs[i][0]], logs[i][1] - logs[i - 1][1]].max
    else
      ans[logs[i][0]] = logs[i][1] - logs[i - 1][1]
    end
  end
  temp = ans.values.max
  arr = ans.key(temp)
  ans.each_key do |key|
    if ans[key] == temp
      arr = [arr, key].min
    end
  end
  arr
end
