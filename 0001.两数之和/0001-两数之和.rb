# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  ans = {}
  for i in 0...nums.length
    if ans.has_key?(nums[i])
      ans[nums[i]].push(i)
    else
      ans[nums[i]] = [i]
    end
  end
  ans.each_pair do |key, value|
    if ans[key].length == 1
      if ans.has_key?(target - key) and target - key != key
        return [ans[key][0], ans[target - key][0]]
      end
    end
    if ans[key].length == 2
      if key + key == target
        return [ans[key][0], ans[key][1]]
      end
    end
  end
end
