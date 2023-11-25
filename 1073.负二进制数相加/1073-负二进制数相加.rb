# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def add_negabinary(arr1, arr2)
  i, j = arr1.length - 1, arr2.length - 1
  carry = 0
  ans = []
  while i >= 0 or j >= 0 or carry != 0
    x = carry
    if i >= 0
      x += arr1[i]
    end
    if j >= 0
      x += arr2[j]
    end
    if x >= 2
      ans.push(x - 2)
      carry = -1
    elsif x >= 0
      ans.push(x)
      carry = 0
    else
      ans.push(1)
      carry = 1
    end
    i -= 1
    j -= 1
  end
  while ans.length > 1 and ans[-1] == 0
    ans.pop
  end
  ans.reverse
end
