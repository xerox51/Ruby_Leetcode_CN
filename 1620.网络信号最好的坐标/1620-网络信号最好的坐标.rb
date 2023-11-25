# @param {Integer[][]} towers
# @param {Integer} radius
# @return {Integer[]}
def best_coordinate(towers, radius)
  towers.sort_by! { |item| item[0] }
  x_max = towers[-1][0]
  towers.sort_by! { |item| item[1] }
  y_max = towers[-1][1]
  cx, cy, mq = 0, 0, 0
  for x in 0...x_max + 1
    for y in 0...y_max + 1
      q = 0
      for j in 0...towers.length
        d = (x - towers[j][0]) ** 2 + (y - towers[j][1]) ** 2
        if d <= radius ** 2
          q += (towers[j][2] / (1 + d ** 0.5)).floor
        end
      end
      if q > mq
        cx, cy, mq = x, y, q
      end
    end
  end
  [cx, cy]
end
