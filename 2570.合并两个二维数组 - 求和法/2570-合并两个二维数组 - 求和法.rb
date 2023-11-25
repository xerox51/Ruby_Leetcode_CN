# @param {Integer[][]} nums1
# @param {Integer[][]} nums2
# @return {Integer[][]}
def merge_arrays(nums1, nums2)
  h1 = nums1.to_h { |item| [item[0], item[1]] }
  h2 = nums2.to_h { |item| [item[0], item[1]] }
  h1.each_pair do |key, value|
    if h2.has_key?(key)
      h1[key] = value + h2[key]
    end
  end
  h2.each_pair do |key, value|
    unless h1.has_key?(key)
      h1[key] = value
    end
  end
  h1.to_a { |key, value| [key, value] }
  h1.sort_by { |item| item[0] }
end
