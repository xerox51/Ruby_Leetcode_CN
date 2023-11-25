# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  ans = 0
  for item in nums
    if to_bit(item) % 2 == 0
      ans += 1
    end
  end
  return ans
end

def to_bit(num)
  i = 0
  while num > 0
    num = num / 10
    i += 1
  end
  return i
end
