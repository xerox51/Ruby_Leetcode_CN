# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
  ans = 0
  for i in 0...points.length - 1
    ans += cal(points[i][0], points[i][1], points[i + 1][0], points[i + 1][1])
  end
  ans
end

def cal(x1, y1, x2, y2)
  if x1 <= x2 and y1 < y2
    a = y1 - x1
    y = x2 + a
    if y2 >= y
      return y2 - y1
    elsif y2 < y
      return x2 - x1
    end
  elsif x1 <= x2 and y1 > y2
    a = y1 + x1
    y = -x2 + a
    if y2 >= y
      return x2 - x1
    elsif y2 < y
      return y1 - y2
    end
  elsif x1 > x2 and y1 > y2
    a = y2 - x2
    y = x1 + a
    if y1 >= y
      return y1 - y2
    elsif y1 < y
      return x1 - x2
    end
  elsif x1 > x2 and y1 < y2
    a = y2 + x2
    y = -x1 + a
    if y1 >= y
      return x1 - x2
    else
      return y2 - y1
    end
  elsif x1 == x2
    return (y2 - y1).abs
  elsif y1 == y2
    return (x2 - x1).abs
  end
end
