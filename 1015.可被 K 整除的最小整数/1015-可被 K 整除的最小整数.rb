# @param {Integer} k
# @return {Integer}
def smallest_repunit_div_by_k(k)
  if k % 2 == 0 || k % 5 == 0
    return -1
  end
  resid = 1 % k
  len = 1
  while resid != 0
    resid = (resid * 10 + 1) % k
    len += 1
  end
  return len
end
