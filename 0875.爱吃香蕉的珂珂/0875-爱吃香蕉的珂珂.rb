# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def min_eating_speed(piles, h)
  low = 1
  high = piles.max
  k = high
  while low < high
    speed = (high - low) / 2 + low
    time = gettime(piles, speed)
    if time <= h
      k = speed
      high = speed
    else
      low = speed + 1
    end
  end
  return k
end

def gettime(piles, speed)
  time = 0
  for i in 0...piles.length
    curtime = (piles[i] + speed - 1) / speed
    time += curtime
  end
  return time
end
