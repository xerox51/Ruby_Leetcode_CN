# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def get_common(nums1, nums2)
  num1 = nums1.uniq.to_h { |item| [item, 1] }
  nums2.each do |item|
    if num1.has_key?(item)
      return item
    end
  end
  return -1
end
