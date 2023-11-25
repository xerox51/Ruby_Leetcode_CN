# @param {String[]} chessboard
# @return {Integer}
def flip_chess(chessboard)
  res = 0
  for i in 0...chessboard.length
    for j in 0...chessboard[0].length
      if chessboard[i][j] == "."
        res = [res, bfs(chessboard, i, j)].max
      end
    end
  end
  res
end

def judge(chessboard, x, y, dx, dy)
  x += dx
  y += dy
  while x >= 0 and x < chessboard.length and y >= 0 and y < chessboard[0].length
    if chessboard[x][y] == "X"
      return true
    elsif chessboard[x][y] == "."
      return false
    end
    x += dx
    y += dy
  end
  return false
end

def bfs(chessboard, px, py)
  chessboard = chessboard.each.map { |item| item.each_char.to_a }
  cnt = 0
  q = [[px, py]]
  chessboard[px][py] = "X"
  while not q.empty?
    tx, ty = q.shift
    for dx in -1..1
      for dy in -1..1
        if dx == dy and dy == 0
          next
        end
        if judge(chessboard, tx, ty, dx, dy)
          x, y = tx + dx, ty + dy
          while chessboard[x][y] != "X"
            q.append([x, y])
            chessboard[x][y] = "X"
            x += dx
            y += dy
            cnt += 1
          end
        end
      end
    end
  end
  cnt
end
