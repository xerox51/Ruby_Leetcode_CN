# @param {Integer[]} height
# @return {Integer}
def trap(height)
  ans = 0
  left, right = 0, height.length - 1
  leftMax, rightMax = 0, 0
  while left < right
    leftMax = [leftMax, height[left]].max
    rightMax = [rightMax, height[right]].max
    if height[left] < height[right]
      ans += (leftMax - height[left])
      left += 1
    else
      ans += (rightMax - height[right])
      right -= 1
    end
  end
  ans
end
