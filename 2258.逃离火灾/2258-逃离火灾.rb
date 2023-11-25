# @param {Integer[][]} grid
# @return {Integer}
def maximum_minutes(grid)
  @m, @n = grid.length, grid[0].length
  @firetime = Array.new(@m) { Array.new(@n, 1.0 / 0.0) }
  @grid = grid
  bfs()
  arrivetime = getarrivetime(0)
  if arrivetime < 0
    return -1
  end
  if @firetime[@m - 1][@n - 1].to_f.infinite?
    return 10 ** 9
  end
  ans = @firetime[@m - 1][@n - 1] - arrivetime
  if getarrivetime(ans) >= 0
    return ans
  else
    return ans - 1
  end
end

def bfs()
  q = []
  for i in 0...@m
    for j in 0...@n
      if @grid[i][j] == 1
        q.push([i, j])
        @firetime[i][j] = 0
      end
    end
  end
  time = 1
  while q.length > 0
    tmp = q
    q = []
    for item in tmp
      temp = [[item[0], item[1] - 1], [item[0], item[1] + 1], [item[0] - 1, item[1]], [item[0] + 1, item[1]]]
      for it in temp
        if it[0] >= 0 and it[1] >= 0 and it[0] < @m and it[1] < @n
          if @grid[it[0]][it[1]] == 2 or @firetime[it[0]][it[1]].to_f.infinite? != 1
            next
          end
          q.push(it)
          @firetime[it[0]][it[1]] = time
        end
      end
    end
    time += 1
  end
end

def getarrivetime(staytime)
  visit = {}
  b = [0, 0]
  visit[b] = 1
  q = []
  q.push([0, 0, staytime])
  while q.length > 0
    tmp = q
    q = []
    for item in tmp
      if item[0] == @m - 1 and item[1] == @n - 1
        return true
      end
      temp = [[item[0], item[1] - 1], [item[0], item[1] + 1], [item[0] - 1, item[1]], [item[0] + 1, item[1]]]
      for it in temp
        if it[0] >= 0 and it[1] >= 0 and it[0] < @m and it[1] < @n
          if visit.has_key?(it) or @grid[it[0]][it[1]] == 2
            next
          end
          if it[0] == @m - 1 and it[1] == @n - 1
            return item[2] + 1
          end
          if @firetime[it[0]][it[1]] > item[2] + 1
            q.push([it[0], it[1], item[2] + 1])
            visit[it] = 1
          end
        end
      end
    end
  end
  return -1
end
