# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
  arr = nums.uniq.sort
  temp = []
  for i in 1...arr.length
    if arr[i] - arr[i - 1] == 1
      temp.push(nums.count(arr[i]) + nums.count(arr[i - 1]))
    end
  end
  if not temp.empty?
    temp.max
  else
    0
  end
end
