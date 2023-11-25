# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  arr.sort!
  arr1 = arr.select { |element| element >= 0 }
  temp = arr.reject { |element| element >= 0 }
  arr2 = []
  for item in temp
    arr2.push(item.abs)
  end
  arr2.sort!
  return judge(arr1) || judge(arr2)
end

def judge(arr)
  if arr[0] == 0 and arr[1] == 0
    return true
  end
  if arr[1] != 0
    for item in arr
      temp = arr.bsearch_index { |element| element >= 2 * item }
      if temp == nil
        break
      end
      if arr[temp] == 2 * item and temp != 0
        return true
      end
    end
  end
  return false
end
