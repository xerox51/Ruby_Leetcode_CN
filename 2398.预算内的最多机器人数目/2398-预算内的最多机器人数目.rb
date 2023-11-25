# @param {Integer[]} charge_times
# @param {Integer[]} running_costs
# @param {Integer} budget
# @return {Integer}
def maximum_robots(charge_times, running_costs, budget)
  q = []
  n = running_costs.length
  sum_s = 0
  ans = 0
  i = 0
  j = 0
  cnt = 0
  while i < n
    sum_s += running_costs[i]
    cnt += 1
    while (q.size != 0) and (charge_times[q[-1]] <= charge_times[i])
      q.pop
    end
    q.push(i)
    while (cnt != 0) and sum_s * cnt + charge_times[q[0]] > budget
      sum_s -= running_costs[j]
      cnt -= 1
      while (q.size != 0) and q[0] <= j
        q.shift
      end
      j += 1
    end
    ans = [ans, cnt].max
    i += 1
  end
  ans
end
