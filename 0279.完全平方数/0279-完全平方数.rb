# @param {Integer} n
# @return {Integer}
def num_squares(n)
  if isPerfectSquare(n)
    return 1
  end
  if checkAnswer4(n)
    return 4
  end
  i = 1
  while i * i <= n
    j = n - i * i
    if isPerfectSquare(j)
      return 2
    end
    i += 1
  end
  return 3
end

def isPerfectSquare(x)
  y = Integer.sqrt(x)
  return y * y == x
end

def checkAnswer4(x)
  while x % 4 == 0
    x = x / 4
  end
  return x % 8 == 7
end
