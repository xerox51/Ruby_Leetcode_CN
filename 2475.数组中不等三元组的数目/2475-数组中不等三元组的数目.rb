# @param {Integer[]} nums
# @return {Integer}
def unequal_triplets(nums)
  ans = 0
  arr = {}
  num = nums.uniq
  if num.length < 3
    return 0
  else
    for i in 0...num.length
      arr[num[i]] = nums.count(num[i])
    end
    temp = arr.keys
    temp.combination(3) do |item|
      ans += arr[item[0]] * arr[item[1]] * arr[item[2]]
    end
    return ans
  end
end
