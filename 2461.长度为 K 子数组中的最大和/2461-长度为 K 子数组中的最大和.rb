def maximum_subarray_sum(nums, k)
  mp = {}
  total, ans = nums[0, k].sum, 0
  for i in 0...k
    if mp.has_key?(nums[i])
      mp[nums[i]] += 1
    else
      mp[nums[i]] = 1
    end
  end
  if mp.size == k
    ans = total
  end
  for i in k...nums.length
    if mp.has_key?(nums[i - k])
      mp[nums[i - k]] -= 1
    end
    if mp.has_key?(nums[i])
      mp[nums[i]] += 1
    else
      mp[nums[i]] = 1
    end
    total += nums[i] - nums[i - k]
    if mp.has_key?(nums[i - k]) and mp[nums[i - k]] == 0
      mp.delete(nums[i - k])
    end
    if mp.size == k
      ans = [ans, total].max
    end
  end
  ans
end
