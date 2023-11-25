# @param {Integer[][]} grid
# @return {Integer[]}
def find_column_width(grid)
  ans = grid.transpose
  t = []
  for item in ans
    s = item[0].to_s.length
    for i in item
      m = i.to_s.length
      if m > s
        s = m
      end
    end
    t.push(s)
  end
  t
end
