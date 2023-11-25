# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer}
def find_max_value_of_equation(points, k)
  res = -1.0 / 0.0
  q = []
  for x, y in points
    while (not q.empty?) && x - q[0][1] > k
      q.shift
    end
    if not q.empty?
      res = [res, x + y + q[0][0]].max
    end
    while (not q.empty?) && y - x >= q[-1][0]
      q.pop
    end
    q.push([y - x, x])
  end
  res
end
