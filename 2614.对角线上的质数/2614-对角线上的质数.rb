# @param {Integer[][]} nums
# @return {Integer}
def diagonal_prime(nums)
  ans = []
  for i in 0...nums.length
    ans.push(nums[i][i])
    ans.push(nums[i][nums.length - i - 1])
  end
  ans.uniq!
  ans.sort!
  tmp = 1
  for item in ans
    flag = false
    t = Math.sqrt(item).to_i
    t.downto(2) do |i|
      if item > 1 and item % i == 0
        flag = true
        break
      end
    end
    unless flag
      tmp = [tmp, item].max
    end
  end
  if tmp == 1
    return 0
  else
    return tmp
  end
end
