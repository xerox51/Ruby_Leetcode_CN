# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
  if n <= 0
    return false
  elsif n == 1
    return true
  elsif n > 1 and n < 4
    return false
  else
    while n >= 4
      if n % 4 != 0
        return false
      end
      n = n / 4
      if n == 3 or n == 2
        return false
      end
    end
    return true
  end
end
