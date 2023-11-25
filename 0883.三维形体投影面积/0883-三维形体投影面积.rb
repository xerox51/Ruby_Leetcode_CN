# @param {Integer[][]} grid
# @return {Integer}
def projection_area(grid)
  return xy(grid) + zx(grid) + yz(grid)
end

def xy(s)
  xy = s.flatten.select { |element| element > 0 }
  xy.length
end

def zx(s)
  zx = []
  for item in s
    zx.push(item.max)
  end
  zx.sum
end

def yz(s)
  if s.flatten.length == 1
    return s.flatten[0]
  end
  yz = []
  i = 0
  while i < s.length
    temp = []
    for item in s
      temp.push(item[i])
    end
    yz.push(temp.max)
    i += 1
  end
  yz.sum
end
