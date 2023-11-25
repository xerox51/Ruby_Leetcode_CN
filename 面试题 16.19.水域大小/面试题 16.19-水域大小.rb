# @param {Integer[][]} land
# @return {Integer[]}
def pond_sizes(land)
  @res = []
  @land = land
  @m, @n = land.length, land[0].length
  for i in 0...@m
    for j in 0...@n
      if land[i][j] == 0
        @res.push(dfs(i, j))
      end
    end
  end
  @res.sort!
  @res
end

def dfs(x, y)
  if x < 0 or x >= @m or y < 0 or y >= @n or @land[x][y] != 0
    return 0
  end
  @land[x][y] = -1
  res = 1
  for dx in -1..1
    for dy in -1..1
      if dx == dy and dy == 0
        next
      end
      res += dfs(x + dx, y + dy)
    end
  end
  res
end
