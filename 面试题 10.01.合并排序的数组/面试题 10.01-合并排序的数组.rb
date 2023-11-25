# @param {Integer[]} a
# @param {Integer} m
# @param {Integer[]} b
# @param {Integer} n
# @return {Void} Do not return anything, modify A in-place instead.
def merge(a, m, b, n)
  c = b.length
  a[m, c] = b
  a.sort!
end
