# @param {Integer[]} commands
# @param {Integer[][]} obstacles
# @return {Integer}
def robot_sim(commands, obstacles)
  dirs = [[-1, 0], [0, 1], [1, 0], [0, -1]]
  px, py, d = 0, 0, 1
  mp = obstacles.uniq.to_h { |item| [item, true] }
  res = 0
  for c in commands
    if c < 0
      if c == -1
        d += 1
      else
        d -= 1
      end
      d %= 4
    else
      for i in 0...c
        if mp.has_key?([px + dirs[d][0], py + dirs[d][1]])
          break
        end
        px, py = px + dirs[d][0], py + dirs[d][1]
        res = [res, px * px + py * py].max
      end
    end
  end
  res
end
