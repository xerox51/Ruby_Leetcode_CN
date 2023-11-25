# @param {Integer[]} nums
# @return {Integer}
def subset_xor_sum(nums)
  total = 0
  0.upto(nums.length) do |i|
    ans = 0
    nums.combination(i) do |items|
      if i == 0
        ans += 0
      else
        ans += items.inject("^")
      end
    end
    total += ans
  end
  total
end
