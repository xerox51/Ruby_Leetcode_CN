# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  stack = {}
  stack[5] = 0
  stack[10] = 0
  stack[20] = 0
  bills.each do |item|
    if item == 5
      stack[5] += 1
    elsif item == 10
      if stack[5] < 1
        return false
      else
        stack[5] -= 1
        stack[10] += 1
      end
    else
      if stack[5] < 1
        return false
      elsif stack[10] < 1 && stack[5] < 3
        return false
      elsif stack[10] >= 1 && stack[5] >= 1
        stack[10] -= 1
        stack[5] -= 1
        stack[20] += 1
      elsif stack[10] < 1 && stack[5] >= 3
        stack[5] -= 3
        stack[20] += 1
      end
    end
  end
  return true
end
