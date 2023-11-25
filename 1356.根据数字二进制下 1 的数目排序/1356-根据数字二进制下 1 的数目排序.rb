# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
  ans = []
  for item in arr
    ans.push([item.to_s(2), item])
  end
  ans.sort_by! { |element| [element[0].count("1"), element[1]] }
  temp = []
  for item in ans
    temp.push(item[1])
  end
  return temp
end
