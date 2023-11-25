# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  ans = {}
  nums.each do |item|
    unless ans.has_key?(item)
      ans[item] = 1
    else
      ans[item] += 1
    end
  end
  temp = ans.values.sort
  total = []
  for i in 0...k
    a = ans.key(temp.pop)
    total << a
    ans.delete(a)
  end
  total
end
