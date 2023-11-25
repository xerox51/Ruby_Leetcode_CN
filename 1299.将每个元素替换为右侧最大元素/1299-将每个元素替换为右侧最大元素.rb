# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  arr1 = []
  for i in 0...arr.length - 1
    arr1.push(arr[i + 1, arr.length - i - 1].max)
  end
  arr1.push(-1)
  arr1
end
