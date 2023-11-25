# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
  if arr.length < 3
    return false
  elsif arr.length == 3 and arr.all? { |item| item % 2 == 1 }
    return true
  elsif arr.length == 3 and arr.any? { |item| item % 2 == 0 }
    return false
  else
    ans = []
    for i in 0...arr.length - 2
      if arr[i] % 2 == 1 and arr[i + 1] % 2 == 1 and arr[i + 2] % 2 == 1
        return true
      end
    end
    return false
  end
end
