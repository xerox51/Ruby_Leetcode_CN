# @param {Integer[][]} logs
# @return {Integer}
def maximum_population(logs)
  delta = Array.new(101, 0)
  offset = 1950
  for item in logs
    delta[item[0] - offset] += 1
    delta[item[1] - offset] -= 1
  end
  mx = 0
  res = 0
  curr = 0
  for i in 0..100
    curr += delta[i]
    if curr > mx
      mx = curr
      res = i
    end
  end
  res + offset
end
