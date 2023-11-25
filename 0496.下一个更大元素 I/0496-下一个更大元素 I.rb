# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  ans = []
  for i in 0...nums1.length
    if nums2.index(nums1[i]) + 1 == nums2.length
      ans.push(-1)
      next
    end
    for j in nums2.index(nums1[i]) + 1...nums2.length
      if nums2[j] > nums1[i]
        ans.push(nums2[j])
        break
      end
      if j == nums2.length - 1 and nums2[j] < nums1[i]
        ans.push(-1)
      end
    end
  end
  return ans
end
