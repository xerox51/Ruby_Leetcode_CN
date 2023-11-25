# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
  temp = []
  for i in 1..arr.last
    unless arr.include?(i)
      temp.push(i)
    end
  end
  if k <= temp.length
    return temp[k - 1]
  else
    return arr.last + k - temp.length
  end
end
