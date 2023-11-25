# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer[]}
def get_least_numbers(arr, k)
  arr.sort[0, k]
end
