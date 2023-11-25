# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
  a = arr.uniq
  ans = a.select { |item| arr.count(item) == item }
  if ans.empty?
    -1
  else
    ans.max
  end
end
