# @param {Integer[]} nums
# @return {Integer}
def find_gcd(nums)
  nums.max.gcd(nums.min)
end
