# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  if n <= 0
    return false
  elsif n == 1
    return true
  else
    while n >= 2
      if n % 2 != 0
        return false
      end
      n = n / 2
    end
    return true
  end
end
