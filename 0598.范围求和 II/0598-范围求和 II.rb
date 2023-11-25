# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} ops
# @return {Integer}
def max_count(m, n, ops)
  xx, yy = ops.reduce([m, n]) { |(a, b), (x, y)|
    [[a, x].min, [b, y].min]
  }
  xx * yy
end
