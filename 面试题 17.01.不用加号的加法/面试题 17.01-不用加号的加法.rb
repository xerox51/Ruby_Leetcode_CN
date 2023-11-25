# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def add(a, b)
  @MASK1 = 4294967296
  @MASK2 = 2147483648
  @MASK3 = 2147483647
  while b != 0
    carry = ((a & b) << 1) % @MASK1
    a = (a ^ b) % @MASK1
    b = carry
  end
  if a & @MASK2 != 0
    return ~((a ^ @MASK2) ^ @MASK3)
  else
    return a
  end
end
