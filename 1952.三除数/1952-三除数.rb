# @param {Integer} n
# @return {Boolean}
def is_three(n)
  if n < 4
    return false
  elsif n == 4
    return true
  else
    m = n ** 0.5
    m = m.to_i
    if m * m == n and isprime(m)
      return true
    end
    return false
  end
end

def isprime(m)
  for i in 2..m - 1
    if m % i == 0
      return false
    end
  end
  return true
end
