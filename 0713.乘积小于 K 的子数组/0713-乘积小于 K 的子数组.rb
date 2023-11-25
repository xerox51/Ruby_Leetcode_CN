# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def num_subarray_product_less_than_k(nums, k)
  ans, prod, i = 0, 1, 0
  for j in 0...nums.length
    prod *= nums[j]
    while i <= j and prod >= k
      prod /= nums[i]
      i += 1
    end
    ans += j - i + 1
  end
  ans
end
