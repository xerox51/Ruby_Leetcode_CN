# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
  ans = 0
  arr.combination(3) do |item|
    if (item[0] - item[1]).abs <= a and (item[1] - item[2]).abs <= b and (item[0] - item[2]).abs <= c
      ans += 1
    end
  end
  ans
end
