# @param {Integer} n
# @return {Integer}
def num_dup_digits_at_most_n(n)
  f = Array.new(10) { Array.new(10, 0) }
  (1...10).each do |i|
    (1...10).each do |j|
      cur = 1
      (i..j).each do |k|
        cur *= k
      end
      f[i][j] = cur
    end
  end
  return (n + 1) - dp(n, f)
end

def dp(x, f)
  t = x
  nums = []
  while t != 0
    nums.push(t % 10)
    t /= 10
  end
  n = nums.length
  if n <= 1
    return x + 1
  end
  ans = 0
  i = n - 1
  p = 1
  s = 0
  while i >= 0
    cur = nums[i]
    cnt = 0
    (cur - 1).downto(0) do |j|
      if i == n - 1 && j == 0
        next
      end
      if ((s >> j) & 1) == 0
        cnt += 1
      end
    end
    a = 10 - p
    b = a - (n - p) + 1
    if b <= a
      ans += cnt * f[b][a]
    else
      ans += cnt
    end
    if ((s >> cur) & 1) == 1
      break
    end
    s |= (1 << cur)
    if i == 0
      ans += 1
    end
    p += 1
    i -= 1
  end
  ans += 10
  i = 2
  last = 9
  while i < n
    cur = last * (10 - i + 1)
    ans += cur
    last = cur
    i += 1
  end
  return ans
end
