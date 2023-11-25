# @param {Integer[][]} grid
# @return {Integer}
def surface_area(grid)
  dr = [0, 1, 0, -1]
  dc = [1, 0, -1, 0]
  n = grid.length
  ans = 0
  for r in 0...n
    for c in 0...n
      if grid[r][c] > 0
        ans += 2
        for k in 0...4
          nr = r + dr[k]
          nc = c + dc[k]
          nv = 0
          if 0 <= nr && nr < n && 0 <= nc && nc < n
            nv = grid[nr][nc]
          end
          ans += [grid[r][c] - nv, 0].max
        end
      end
    end
  end
  ans
end
