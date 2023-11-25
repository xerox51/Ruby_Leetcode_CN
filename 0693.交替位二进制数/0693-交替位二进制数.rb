# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
  n = n.to_s(2)
  if n.length % 2 == 0
    return "10" * (n.length / 2) == n
  else
    return "10" * (n.length / 2) + "1" == n
  end
end
