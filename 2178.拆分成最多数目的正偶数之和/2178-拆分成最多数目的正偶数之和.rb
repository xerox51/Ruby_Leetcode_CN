# @param {Integer} final_sum
# @return {Integer[]}
def maximum_even_split(final_sum)
  res = []
  if final_sum % 2 == 1
    return res
  end
  i = 2
  while i <= final_sum
    res.push(i)
    final_sum -= i
    i += 2
  end
  res[-1] += final_sum
  res
end
