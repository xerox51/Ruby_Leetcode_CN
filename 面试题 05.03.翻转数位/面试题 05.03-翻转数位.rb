# @param {Integer} num
# @return {Integer}
def reverse_bits(num)
  cur = 0
  ins = 0
  res = 1
  for i in 0...32
    if num & (1 << i) != 0
      cur += 1
      ins += 1
    else
      ins = cur + 1
      cur = 0
    end
    res = [res, ins].max
  end
  res
end
