# @param {String[]} array
# @return {String[]}
def find_longest_subarray(array)
  indices = {}
  indices[0] = -1
  total = 0
  maxlength = 0
  startindex = -1
  array.each_with_index do |item, index|
    if "0".ord <= item[0].ord && item[0].ord <= "9".ord
      total += 1
    else
      total -= 1
    end
    if indices.has_key?(total)
      firstindex = indices[total]
      if index - firstindex > maxlength
        maxlength = index - firstindex
        startindex = firstindex + 1
      end
    else
      indices[total] = index
    end
  end
  if maxlength == 0
    return []
  else
    return array[startindex, maxlength]
  end
end
