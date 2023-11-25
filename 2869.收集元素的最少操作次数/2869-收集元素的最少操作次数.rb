# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_operations(nums, k)
  ans = {}
  judge = (1..k).to_a
  i = 0
  loop {
    i += 1
    a = nums.pop
    if a >= 1 and a <= k
      ans[a] = 1
    end
    if ans.keys.sort == judge
      return i
    end
  }
end
