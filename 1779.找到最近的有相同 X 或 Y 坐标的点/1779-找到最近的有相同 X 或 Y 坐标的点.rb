# @param {Integer} x
# @param {Integer} y
# @param {Integer[][]} points
# @return {Integer}
def nearest_valid_point(x, y, points)
  ans = []
  distant = []
  points.each_with_index do |item, index|
    if item[0] == x or item[1] == y
      ans.push(index)
      distant.push((x - item[0]).abs + (y - item[1]).abs)
    end
  end
  unless ans.empty?
    return ans[distant.index(distant.min)]
  else
    return -1
  end
end
