# @param {Integer[]} nums
# @return {Integer}
def count_quadruplets(nums)
  ans = 0
  h = {}
  for i in 0...nums.length
    if h.has_key?(nums[i])
      h[nums[i]].push(i)
    else
      h[nums[i]] = [i]
    end
  end
  for l in 0...nums.length
    for j in 0...nums.length
      for i in 0...nums.length
        if l < j and j < i
          total = nums[l] + nums[j] + nums[i]
          if h.has_key?(total)
            for item in h[total]
              if item > i
                ans += 1
              end
            end
          end
        end
      end
    end
  end
  ans
end
