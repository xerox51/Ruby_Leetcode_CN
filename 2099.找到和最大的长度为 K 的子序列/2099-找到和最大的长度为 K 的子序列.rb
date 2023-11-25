# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_subsequence(nums, k)
  arr = (0...nums.length).to_a.sort_by { |item| nums[item] }
  temp = arr[-k, k]
  temp.sort!
  total = []
  temp.each do |i|
    total.push(nums[i])
  end
  total
end
