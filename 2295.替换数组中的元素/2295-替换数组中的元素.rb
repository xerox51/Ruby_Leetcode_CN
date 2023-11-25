# @param {Integer[]} nums
# @param {Integer[][]} operations
# @return {Integer[]}
def array_change(nums, operations)
  h = {}
  for j in 0...nums.length
    h[nums[j]] = j
  end
  for i in 0...operations.length
    if h.has_key?(operations[i][0])
      temp = h[operations[i][0]]
      nums[h[operations[i][0]]] = operations[i][1]
      h[operations[i][1]] = temp
    end
  end
  return nums
end
