# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def painting_plan(n, k)
  if k == 0 || k == n * n
    return 1
  end
  if k < n
    return 0
  end
  res = 0
  for i in 0...n
    if (k - n * i) % (n - i) != 0
      next
    end
    j = (k - n * i) / (n - i)
    if j < 0
      next
    end
    res += c(n, i) * c(n, j)
  end
  res
end

def c(a, b)
  res = 1
  i = a - b + 1
  j = 1
  while j <= b
    res = res * i / j
    i += 1
    j += 1
  end
  res
end
