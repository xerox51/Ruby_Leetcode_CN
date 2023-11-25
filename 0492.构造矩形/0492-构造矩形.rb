# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
  w = Math.sqrt(area).to_i
  while area % w != 0
    w -= 1
  end
  return [area / w, w]
end
