# @param {Integer} n
# @return {Integer}
def ways_to_step(n)
  a, b, c = 1, 2, 4
  for i in 2..n
    t = (a + b) % (10 ** 9 + 7)
    t = (t + c) % (10 ** 9 + 7)
    a = b
    b = c
    c = t
  end
  a
end
