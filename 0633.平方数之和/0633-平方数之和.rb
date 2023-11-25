# @param {Integer} c
# @return {Boolean}
def judge_square_sum(c)
  left = 0
  right = Math.sqrt(c).round
  while left <= right
    total = left * left + right * right
    if total == c
      return true
    elsif total > c
      right -= 1
    else
      left += 1
    end
  end
  return false
end
