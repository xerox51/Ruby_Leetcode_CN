# @param {Integer} num1
# @param {Integer} num2
# @return {Integer}
def count_operations(num1, num2)
  ans = 0
  while num1 > 0 and num2 > 0
    if num1 > num2
      num1 = num1 - num2
      ans += 1
    else
      num2 = num2 - num1
      ans += 1
    end
  end
  ans
end
