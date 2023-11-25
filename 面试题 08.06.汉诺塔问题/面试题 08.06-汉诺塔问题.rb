# @param {Integer[]} a
# @param {Integer[]} b
# @param {Integer[]} c
# @return {Void} Do not return anything, modify C in-place instead.
def hanota(a, b, c)
  n = a.length
  move(n, a, b, c)
end

def move(n, a, b, c)
  if n == 1
    c.push(a[-1])
    a.pop
    return
  else
    move(n - 1, a, c, b)
    c.push(a[-1])
    a.pop
    move(n - 1, b, a, c)
  end
end
