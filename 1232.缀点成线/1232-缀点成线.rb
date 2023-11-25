# @param {Integer[][]} coordinates
# @return {Boolean}
def check_straight_line(coordinates)
  a = coordinates[1][0] - coordinates[0][0]
  b = coordinates[1][1] - coordinates[0][1]
  if a == 0
    for item in coordinates
      if item[0] != coordinates[0][0]
        return false
      end
    end
    return true
  end
  if b == 0
    for item in coordinates
      if item[1] != coordinates[0][1]
        return false
      end
    end
  end
  n = coordinates.length
  for i in 0...n - 1
    if (coordinates[n - 1][1] - coordinates[i + 1][1]) * (coordinates[n - 1][0] - coordinates[i][0]) != (coordinates[n - 1][1] - coordinates[i][1]) * (coordinates[n - 1][0] - coordinates[i + 1][0])
      return false
    end
  end
  return true
end
