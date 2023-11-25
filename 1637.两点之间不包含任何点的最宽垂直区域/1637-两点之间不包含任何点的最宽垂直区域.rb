# @param {Integer[][]} points
# @return {Integer}
def max_width_of_vertical_area(points)
  nums = []
  points.each do |item|
    nums.push(item[0])
  end
  nums.uniq!
  nums.sort!
  ans = 0
  i = 0
  while i < nums.length - 1
    ans = [ans, nums[i + 1] - nums[i]].max
    i += 1
  end
  ans
end
