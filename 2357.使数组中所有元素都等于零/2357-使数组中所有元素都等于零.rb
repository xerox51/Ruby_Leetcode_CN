# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
  nums.sort!
  n = nums.select { |item| item > 0 }
  minus(n)
end

def minus(nums)
  n = 0
  while not nums.empty?
    m = nums.first
    n += 1
    nums = nums.select { |item| item - m > 0 }
  end
  return n
end
