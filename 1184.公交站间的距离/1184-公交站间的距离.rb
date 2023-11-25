# @param {Integer[]} distance
# @param {Integer} start
# @param {Integer} destination
# @return {Integer}
def distance_between_bus_stops(distance, start, destination)
  if start == destination
    return 0
  else
    s = [start, destination].min
    d = [start, destination].max
    ans1 = 0
    ans2 = 0
    ans3 = 0
    for i in s...d
      ans1 += distance[i]
    end
    for j in d...distance.length
      ans2 += distance[j]
    end
    for l in 0...s
      ans3 += distance[l]
    end
    return [ans1, ans2 + ans3].min
  end
end
