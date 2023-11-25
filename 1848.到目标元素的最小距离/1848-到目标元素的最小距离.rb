# @param {Integer[]} nums
# @param {Integer} target
# @param {Integer} start
# @return {Integer}
def get_min_distance(nums, target, start)
  h = {}
  for i in 0...nums.length
    if nums[i] == target and h.has_key?(target)
      h[target].push(i)
    elsif (not h.has_key?(target)) and nums[i] == target
      h[target] = [i]
    end
  end
  m = h.values.flatten
  ans = []
  for i in 0...m.length
    ans.push((m[i] - start).abs)
  end
  ans.min
end
