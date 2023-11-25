# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
  h = {}
  arr.uniq.sort.each_with_index do |item, index|
    h[item] = index + 1
  end
  ans = []
  for item in arr
    ans.push(h[item])
  end
  ans
end
