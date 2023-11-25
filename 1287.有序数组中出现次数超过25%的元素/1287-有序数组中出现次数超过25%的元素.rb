# @param {Integer[]} arr
# @return {Integer}
def find_special_integer(arr)
  ans = arr.uniq.select { |item| arr.count(item) / arr.length.to_f > 0.25 }
  ans[0]
end
