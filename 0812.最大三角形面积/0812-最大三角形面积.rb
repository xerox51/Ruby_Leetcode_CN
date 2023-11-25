# @param {Integer[][]} points
# @return {Float}
def largest_triangle_area(points)
  points1 = points[0, points.length - 2]
  points2 = points[1, points.length - 2]
  points3 = points[2, points.length - 2]
  maxs = 0
  points1.each do |item1|
    points2.each do |item2|
      points3.each do |item3|
        tmp = line(item1[0], item1[1], item2[0], item2[1])
        if tmp[0] == true
          s = (item3[0] - tmp[1]).abs * (item2[1] - item1[1]).abs / 2.0
        elsif tmp[0] == false
          s = (item3[1] - tmp[1]).abs * (item2[0] - item1[0]).abs / 2.0
        else
          s = Math.sqrt((item2[1] - item1[1]) ** 2 + (item2[0] - item1[0]) ** 2) * ((tmp[0] * item3[0] - item3[1] + tmp[1]).abs / Math.sqrt(1 + tmp[0] ** 2)) / 2.0
        end
        maxs = [maxs, s].max
      end
    end
  end
  maxs
end

def line(x1, y1, x2, y2)
  if x1 == x2
    return [true, x1.to_f]
  elsif y1 == y2
    return [false, y1.to_f]
  else
    return [(y2 - y1) / (x2 - x1).to_f, y1 - (y2 - y1) * x1 / (x2 - x1).to_f]
  end
end
