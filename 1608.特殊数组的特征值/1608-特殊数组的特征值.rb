# @param {Integer[]} nums
# @return {Integer}
def special_array(nums)
  nums.sort!
  nums.select! { |element| element > 0 }
  if nums.empty?
    return -1
  end
  ans = []
  for i in 1..nums.last
    for item in nums
      temp = nums.bsearch_index { |element| element >= i }
      if nums.length - temp == i
        ans.push(i)
      end
      if i > nums.length
        break
      end
    end
  end
  unless ans.empty?
    return ans.last
  else
    return -1
  end
end
