# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def min_number(nums1, nums2)
  nums1.sort!
  nums1.each do |item|
    if nums2.include?(item)
      return item
    end
  end
  return 10 * [nums1.min, nums2.min].min + [nums1.min, nums2.min].max
end
