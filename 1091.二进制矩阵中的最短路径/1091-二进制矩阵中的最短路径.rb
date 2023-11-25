# @param {Integer[][]} grid
# @return {Integer}
def shortest_path_binary_matrix(grid)
  if grid[0][0] == 1
    return -1
  end
  n = grid.length
  dist = Array.new(n) { Array.new(n, 1.0 / 0.0) }
  dist[0][0] = 1
  queue = [[0, 0]]
  while (not queue.empty?)
    x, y = queue.shift
    if x == y and y == n - 1
      return dist[x][y]
    end
    (-1).upto(1) do |dx|
      (-1).upto(1) do |dy|
        if x + dx < 0 or x + dx >= n or y + dy < 0 or y + dy >= n
          next
        end
        if grid[x + dx][y + dy] == 1 or dist[x + dx][y + dy] <= dist[x][y] + 1
          next
        end
        dist[x + dx][y + dy] = dist[x][y] + 1
        queue.push([x + dx, y + dy])
      end
    end
  end
  return -1
end
