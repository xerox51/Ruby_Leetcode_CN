# @param {Integer[]} nums
# @return {Integer[]}
def sort_even_odd(nums)
  num_odd = []
  num_even = []
  for i in 0...nums.length
    if i % 2 == 1
      num_odd.push(nums[i])
    else
      num_even.push(nums[i])
    end
  end
  num_odd.sort!
  num_odd.reverse!
  num_even.sort!
  for i in 0...nums.length
    if i % 2 == 0
      nums[i] = num_even[i / 2]
    else
      nums[i] = num_odd[i / 2]
    end
  end
  nums
end
