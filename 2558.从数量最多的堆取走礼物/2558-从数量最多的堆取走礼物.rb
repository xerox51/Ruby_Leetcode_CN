# @param {Integer[]} gifts
# @param {Integer} k
# @return {Integer}
def pick_gifts(gifts, k)
  gifts.sort!
  while k > 0
    gifts[-1] = Integer.sqrt(gifts[-1])
    gifts.sort!
    k -= 1
  end
  gifts.sum
end
