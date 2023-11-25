# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @param {Integer} d
# @return {Integer}
def find_the_distance_value(arr1, arr2, d)
  arr2.sort!
  cnt = 0
  for item in arr1
    p = arr2.bsearch_index { |element| element >= item }
    if p == nil
      p = arr2.length
    end
    if p == arr2.length or (item - arr2[p]).abs > d
      if p == 0 or (item - arr2[p - 1]).abs > d
        cnt += 1
      end
    end
  end
  return cnt
end
