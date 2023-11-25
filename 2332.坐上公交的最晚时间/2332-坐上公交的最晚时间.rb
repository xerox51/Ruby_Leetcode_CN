# @param {Integer[]} buses
# @param {Integer[]} passengers
# @param {Integer} capacity
# @return {Integer}
def latest_time_catch_the_bus(buses, passengers, capacity)
  buses.sort!
  passengers.sort!
  j = 0
  for t in buses
    c = capacity
    while c > 0 and j < passengers.length and passengers[j] <= t
      c -= 1
      j += 1
    end
  end
  j -= 1
  if c > 0
    ans = buses[-1]
  else
    ans = passengers[j]
  end
  while j >= 0 and passengers[j] == ans
    ans -= 1
    j -= 1
  end
  return ans
end
