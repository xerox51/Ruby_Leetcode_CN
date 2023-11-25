# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  n = nums.length
  k = k % n
  count = k.gcd(n)
  for i in 0...count
    current = i
    prev = nums[i]
    loop do
      next_i = (current + k) % n
      nums[next_i], prev = prev, nums[next_i]
      current = next_i
      break if i == current
    end
  end
end
