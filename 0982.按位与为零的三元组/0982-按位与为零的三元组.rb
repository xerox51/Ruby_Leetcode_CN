# @param {Integer[]} nums
# @return {Integer}
def count_triplets(nums)
  u = 1
  nums.each do |x|
    while u <= x
      u <<= 1
    end
  end
  cnt = Array.new(u, 0)
  cnt[0] = nums.length
  nums.each do |m|
    m ^= u - 1
    s = m
    while s > 0
      cnt[s] += 1
      s = (s - 1) & m
    end
  end
  total = 0
  nums.each do |x|
    nums.each do |y|
      total += cnt[x & y]
    end
  end
  total
end
