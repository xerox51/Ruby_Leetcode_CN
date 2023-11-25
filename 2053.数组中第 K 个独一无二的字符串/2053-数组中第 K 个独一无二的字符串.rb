# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
  temp = arr.uniq.keep_if { |item| arr.count(item) == 1 }
  if temp.length < k
    return ""
  else
    return temp[k - 1]
  end
end
