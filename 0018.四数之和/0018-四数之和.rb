# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  nums.sort!
  n = nums.length
  res = []
  visited = {}
  (0...n - 3).each do |i|
    if nums[i] > 0 and nums[i] > target
      break
    end
    (i + 1...n - 2).each do |j|
      if nums[i] + nums[j] > 0 and nums[i] + nums[j] > target
        break
      end
      p, q = j + 1, n - 1
      while p < q
        tmp = [nums[i], nums[j], nums[p], nums[q]]
        tmpsum = tmp.sum
        if tmpsum == target
          tmp_s = tmp.map { |item| item.to_s }
          tmps = tmp_s.join(",")
          unless visited.has_key?(tmps)
            res.push(tmp)
            visited[tmps] = 1
          end
          p += 1
          q -= 1
        elsif tmpsum < target
          p += 1
        else
          q -= 1
        end
      end
    end
  end
  res
end
