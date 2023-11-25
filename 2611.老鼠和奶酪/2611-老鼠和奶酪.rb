# @param {Integer[]} reward1
# @param {Integer[]} reward2
# @param {Integer} k
# @return {Integer}
def mice_and_cheese(reward1, reward2, k)
  ans = 0
  n = reward1.length
  diffs = Array.new(n, 0)
  0.upto(n - 1) do |i|
    ans += reward2[i]
    diffs[i] = reward1[i] - reward2[i]
  end
  diffs.sort!
  1.upto(k) do |j|
    ans += diffs[n - j]
  end
  ans
end
