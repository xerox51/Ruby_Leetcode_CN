# @param {Integer} n
# @return {Integer}
def fib(n)
  mod = 10 ** 9 + 7
  if n < 2
    return n
  end
  p, q, r = 0, 0, 1
  for i in 2...n + 1
    p = q
    q = r
    r = (p + q) % mod
  end
  r
end
