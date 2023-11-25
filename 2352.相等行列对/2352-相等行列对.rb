# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  ans = grid.transpose
  h1 = {}
  temp = 0
  for item in grid
    if h1.has_key?(item)
      h1[item][0] += 1
    else
      h1[item] = [1, 0]
    end
  end
  for item in ans
    if h1.has_key?(item)
      h1[item][1] += 1
    end
  end
  nums = h1.values
  for item in nums
    temp += item[0] * item[1]
  end
  return temp
end
