# @param {Integer[]} nums
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
def count_fair_pairs(nums, lower, upper)
  nums.sort!
  ans = 0
  nums.each_with_index do |item, index|
    r = nums[0, index].bsearch_index { |item1| item1 >= upper - item + 1 }
    l = nums[0, index].bsearch_index { |item1| item1 >= lower - item }
    if l == nil
      next
    elsif r == nil
      r = index
    end
    ans += r - l
  end
  ans
end
