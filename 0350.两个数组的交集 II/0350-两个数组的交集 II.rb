# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  temp = nums1.intersection(nums2)
  ans = []
  for item in temp
    len = [nums1.count(item), nums2.count(item)].min
    if len == 1
      next
    else
      arr = Array.new(len - 1, item)
      ans.concat(arr)
    end
  end
  temp.concat(ans)
end
