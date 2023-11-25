# @param {Integer} n
# @param {Integer} k
# @param {Integer} target
# @return {Integer}
def num_rolls_to_target(n, k, target)
  mod = 10 ** 9 + 7
  f = Array.new(target + 1, 0)
  f[0] = 1
  for i in 1..n
    target.downto(0) do |j|
      f[j] = 0
      for x in 1..k
        if j - x >= 0
          f[j] = (f[j] + f[j - x]) % mod
        end
      end
    end
  end
  f[target]
end
