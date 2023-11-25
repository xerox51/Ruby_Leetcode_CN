# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  ans = [0 + gain[0]]
  for i in 1...gain.length
    ans.push(gain[i] + ans[i - 1])
  end
  [ans.max, 0].max
end
