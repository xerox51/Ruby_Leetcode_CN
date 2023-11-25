# @param {Integer[]} nums
# @return {Integer}
def find_shortest_sub_array(nums)
  h = {}
  for i in 0...nums.length
    if h.has_key?(nums[i])
      h[nums[i]][0] += 1
      h[nums[i]][2] = i
    else
      h[nums[i]] = [1, i, i]
    end
  end
  maxnum, minnum = 0
  for item in h.values
    if maxnum < item[0]
      maxnum = item[0]
      minnum = item[2] - item[1] + 1
    elsif maxnum == item[0]
      if minnum > item[2] - item[1] + 1
        minnum = item[2] - item[1] + 1
      end
    end
  end
  return minnum
end
