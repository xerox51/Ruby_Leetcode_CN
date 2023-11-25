# @param {Integer[]} nums
# @return {Integer}
def beautiful_subarrays(nums)
  ans, s = 0, 0
  cnt = {}
  cnt[0] = 1
  nums.each do |item|
    s ^= item
    if cnt.has_key?(s)
      ans += cnt[s]
      cnt[s] += 1
    else
      cnt[s] = 1
    end
  end
  ans
end
