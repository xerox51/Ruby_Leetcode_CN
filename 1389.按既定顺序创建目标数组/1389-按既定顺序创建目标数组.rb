# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
  target = []
  for i in 0...nums.length
    if index[i] == target.length
      target.push(nums[i])
    else
      target.insert(index[i], nums[i])
    end
  end
  target
end
