# @param {Integer[]} supplies
# @return {Integer[]}
def supply_wagon(supplies)
  m = supplies.length / 2
  while supplies.length > m
    idx = 1
    for i in 1...supplies.length
      if supplies[i - 1] + supplies[i] < supplies[idx - 1] + supplies[idx]
        idx = i
      end
    end
    supplies[idx - 1] += supplies[idx]
    supplies.delete_at(idx)
  end
  supplies
end
