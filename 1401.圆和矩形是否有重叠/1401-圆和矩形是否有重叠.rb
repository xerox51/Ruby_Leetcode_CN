# @param {Integer} radius
# @param {Integer} x_center
# @param {Integer} y_center
# @param {Integer} x1
# @param {Integer} y1
# @param {Integer} x2
# @param {Integer} y2
# @return {Boolean}
def check_overlap(radius, x_center, y_center, x1, y1, x2, y2)
  if x1 <= x_center and x_center <= x2 and y1 <= y_center and y_center <= y2
    return true
  end
  if x1 <= x_center and x_center <= x2 and y2 <= y_center and y_center <= y2 + radius
    return true
  end
  if x1 <= x_center and x_center <= x2 and y1 - radius <= y_center and y_center <= y1
    return true
  end
  if x1 - radius <= x_center and x_center <= x1 and y1 <= y_center and y_center <= y2
    return true
  end
  if x2 <= x_center and x_center <= x2 + radius and y1 <= y_center and y_center <= y2
    return true
  end
  if distance(x_center, y_center, x1, y2) <= radius ** 2
    return true
  end
  if distance(x_center, y_center, x1, y1) <= radius ** 2
    return true
  end
  if distance(x_center, y_center, x2, y2) <= radius ** 2
    return true
  end
  if distance(x_center, y_center, x1, y2) <= radius ** 2
    return true
  end
  return false
end

def distance(ux, uy, vx, vy)
  return (ux - vx) ** 2 + (uy - vy) ** 2
end
