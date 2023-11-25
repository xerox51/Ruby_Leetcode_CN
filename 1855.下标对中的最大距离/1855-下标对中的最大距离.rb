# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def max_distance(nums1, nums2)
  arr2 = nums2.sort
  arr1 = nums1.sort
  num1 = arr1.length
  num2 = arr2.length
  ans = 0
  for i in 0...arr1.length
    temp = arr2.bsearch_index { |element| element >= arr1[i] }
    if temp != nil
      ans = [ans, num2 - temp - num1 + i].max
    end
    if temp == nil
      break
    end
  end
  return ans
end
