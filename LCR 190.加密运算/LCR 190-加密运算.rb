# @param {Integer} data_a
# @param {Integer} data_b
# @return {Integer}
def encryption_calculate(data_a, data_b)
  x = 0xffffffff
  data_a, data_b = data_a & x, data_b & x
  while data_b != 0
    data_a, data_b = (data_a ^ data_b), (data_a & data_b) << 1 & x
  end
  if data_a <= 0x7fffffff
    return data_a
  else
    return ~(data_a ^ x)
  end
end
