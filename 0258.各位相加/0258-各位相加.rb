# @param {Integer} num
# @return {Integer}
def add_digits(num)
  temp = add_every(num)
  while temp.length > 1
    temp = add_every(temp)
  end
  temp.to_i
end

def add_every(nums)
  total = 0
  for i in 0...nums.to_s.length
    total += nums.to_s[i].to_i
  end
  total.to_s
end
