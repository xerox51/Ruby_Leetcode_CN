# @param {Integer[]} obstacles
# @return {Integer}
def min_side_jumps(obstacles)
  d = [1, 0, 1]
  for i in 1..obstacles.length - 1
    minCnt = 1.0 / 0.0
    for j in 0..2
      if j == obstacles[i] - 1
        d[j] = 1.0 / 0.0
      else
        minCnt = [minCnt, d[j]].min
      end
    end
    for j in 0..2
      if j != obstacles[i] - 1
        d[j] = [d[j], minCnt + 1].min
      end
    end
  end
  d.min
end
