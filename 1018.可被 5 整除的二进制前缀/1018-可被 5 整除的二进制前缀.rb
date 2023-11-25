# @param {Integer[]} nums
# @return {Boolean[]}
def prefixes_div_by5(nums)
  answer = []
  prefix = 0
  for num in nums
    prefix = ((prefix << 1) + num) % 5
    if prefix == 0
      answer.push(true)
    else
      answer.push(false)
    end
  end
  answer
end
