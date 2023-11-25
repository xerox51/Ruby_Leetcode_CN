# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} indices
# @return {Integer}
def odd_cells(m, n, indices)
  ans = Array.new(m) { Array.new(n, 0) }
  for item in indices
    for j in 0...n
      ans[item[0]][j] += 1
    end
    for j in 0...m
      ans[j][item[1]] += 1
    end
  end
  temp = 0
  for items in ans
    for item in items
      if item.odd?
        temp += 1
      end
    end
  end
  return temp
end
