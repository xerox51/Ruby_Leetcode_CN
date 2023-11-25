# @param {String[]} logs
# @return {Integer}
def min_operations(logs)
  ans = 0
  for i in 0...logs.length
    if logs[i] == "../" and ans == 0
      next
    elsif logs[i] == "../" and ans > 0
      ans -= 1
    elsif logs[i] == "./"
      next
    else
      ans += 1
    end
  end
  ans
end
