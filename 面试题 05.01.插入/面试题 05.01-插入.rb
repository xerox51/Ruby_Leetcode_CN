# @param {Integer} n
# @param {Integer} m
# @param {Integer} i
# @param {Integer} j
# @return {Integer}
def insert_bits(n, m, i, j)
  for k in i..j
    n &= ~(1 << k)
  end
  n + (m << i)
end
