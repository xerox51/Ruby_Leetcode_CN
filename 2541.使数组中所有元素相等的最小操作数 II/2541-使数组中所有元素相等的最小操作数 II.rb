# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer}
def min_operations(nums1, nums2, k)
  n = nums1.length
  neg, pos = 0, 0
  (0...n).to_a.each do |i|
    det = nums1[i] - nums2[i]
    if k == 0
      if det != 0
        return -1
      end
    else
      if det % k != 0
        return -1
      end
      if det < 0
        neg -= (det / k)
      else
        pos += det / k
      end
    end
  end
  if neg != pos
    return -1
  else
    return pos
  end
end
