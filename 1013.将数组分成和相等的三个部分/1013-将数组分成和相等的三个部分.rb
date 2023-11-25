# @param {Integer[]} arr
# @return {Boolean}
def can_three_parts_equal_sum(arr)
  if arr.sum % 3 != 0
    return false
  else
    n = arr.sum / 3
    temp = 0
    cnt = 0
    for i in 0...arr.length
      temp += arr[i]
      if temp == n
        temp = 0
        cnt += 1
      end
      if i = arr.length - 1 and cnt == 3
        return true
      end
    end
    return false
  end
end
