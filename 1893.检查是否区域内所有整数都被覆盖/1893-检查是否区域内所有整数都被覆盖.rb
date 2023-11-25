# @param {Integer[][]} ranges
# @param {Integer} left
# @param {Integer} right
# @return {Boolean}
def is_covered(ranges, left, right)
  ans = 0
  for i in left..right
    for item in ranges
      if item[0] <= i and item[1] >= i
        ans += 1
        break
      end
    end
  end
  ans == right - left + 1
end
