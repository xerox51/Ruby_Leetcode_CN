# @param {Integer[]} seats
# @return {Integer}
def max_dist_to_closest(seats)
  ans = []
  for i in 0...seats.length
    if seats[i] == 1
      ans.push(i)
    end
  end
  if ans.length == 1
    return [ans[0] - 0, seats.length - ans[0] - 1].max
  else
    l = []
    for i in 0...ans.length
      if i == 0
        l.push(ans[i])
      elsif i > 0 and i < ans.length - 1
        l.push((ans[i] - ans[i - 1]) / 2)
      else
        l.push((ans[i] - ans[i - 1]) / 2)
        l.push(seats.length - ans[i] - 1)
      end
    end
    l.max
  end
end
