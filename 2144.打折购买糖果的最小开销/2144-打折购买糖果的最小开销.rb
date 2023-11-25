# @param {Integer[]} cost
# @return {Integer}
def minimum_cost(cost)
  cost.sort!
  if cost.length % 3 == 0
    n = cost.length
    total = 0
    (0...n).step(3) do |i|
      total += cost[i + 1] + cost[i + 2]
    end
    return total
  elsif cost.length % 3 == 1
    n = cost.length
    total = 0
    (1...n).step(3) do |i|
      total += cost[i + 1] + cost[i + 2]
    end
    return total + cost[0]
  else
    n = cost.length
    total = 0
    (2...n).step(3) do |i|
      total += cost[i + 1] + cost[i + 2]
    end
    return total + cost[0] + cost[1]
  end
end
