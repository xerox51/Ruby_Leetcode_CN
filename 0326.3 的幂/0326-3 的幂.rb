# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  if n <= 0
    return false
  end
  if n == 1
    return true
  end
  m = n % 3
  if m != 0
    return false
  else
    while n >= 3
      m = n % 3
      if m != 0
        return false
      end
      n = n / 3
      if n == 2
        return false
      end
    end
    return true
  end
end
