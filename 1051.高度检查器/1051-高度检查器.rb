# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  ans = heights.sort
  temp = 0
  for i in 0...ans.length
    if ans[i] != heights[i]
      temp += 1
    end
  end
  return temp
end
