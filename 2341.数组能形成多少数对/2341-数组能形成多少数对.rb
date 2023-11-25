# @param {Integer[]} nums
# @return {Integer[]}
def number_of_pairs(nums)
  ans = 0
  temp = nums.uniq
  ans_single = 0
  for i in 0...temp.length
    num = nums.count(temp[i])
    if num % 2 == 0
      ans += num / 2
    end
    if num > 1 and num % 2 == 1
      ans += num / 2
      ans_single += 1
    end
    if num == 1
      ans_single += 1
    end
  end
  return [ans, ans_single]
end
