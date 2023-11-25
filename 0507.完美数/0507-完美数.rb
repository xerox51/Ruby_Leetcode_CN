# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
  if num == 1
    return false
  end
  total = 1
  d = 2
  while d * d <= num
    if num % d == 0
      total += d
      if d * d < num
        total += num / d
      end
    end
    d += 1
  end
  return total == num
end
