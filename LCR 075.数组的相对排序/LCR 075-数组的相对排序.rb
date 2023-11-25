# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
  h1 = {}
  arr1.each_with_index do |item, index|
    if h1.has_key?(item)
      h1[item].push(index)
    else
      h1[item] = [index]
    end
  end
  ans1 = []
  ans2 = []
  h2 = arr2.to_h { |item| [item, 1] }
  h2.each_pair do |key, value|
    if h1.has_key?(key)
      tmp = h1[key].map { |it| arr1[it] }
      ans1.concat(tmp)
      h1.delete(key)
    end
  end
  h1.each_pair do |key, value|
    tmp = h1[key].map { |it| arr1[it] }
    ans2.concat(tmp)
  end
  ans2.sort!
  ans1.concat(ans2)
end
