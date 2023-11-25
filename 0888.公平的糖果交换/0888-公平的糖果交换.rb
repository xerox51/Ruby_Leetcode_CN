# @param {Integer[]} alice_sizes
# @param {Integer[]} bob_sizes
# @return {Integer[]}
def fair_candy_swap(alice_sizes, bob_sizes)
  sumA = alice_sizes.sum
  sumB = bob_sizes.sum
  delta = (sumA - sumB) / 2
  rec = alice_sizes.uniq
  ans = nil
  for y in bob_sizes
    x = y + delta
    if rec.include?(x)
      ans = [x, y]
      break
    end
  end
  ans
end
