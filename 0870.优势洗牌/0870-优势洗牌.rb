# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def advantage_count(nums1, nums2)
  h1 = (0...nums1.length).to_a.sort_by { |item| nums1[item] }
  h2 = (0...nums2.length).to_a.sort_by { |item| nums2[item] }
  ans = Array.new(nums1.length, 0)
  left, right = 0, nums1.length - 1
  for i in 0...nums1.length
    if nums1[h1[i]] > nums2[h2[left]]
      ans[h2[left]] = nums1[h1[i]]
      left += 1
    else
      ans[h2[right]] = nums1[h1[i]]
      right -= 1
    end
  end
  ans
end
