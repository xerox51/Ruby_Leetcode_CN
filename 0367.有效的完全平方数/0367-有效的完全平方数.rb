# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  left, right = 0, num
  while left <= right
    mid = (left + right) / 2
    square = mid * mid
    if square < num
      left = mid + 1
    elsif square > num
      right = mid - 1
    else
      return true
    end
  end
  return false
end
