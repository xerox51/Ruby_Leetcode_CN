# @param {Integer[]} nums
# @return {Integer}
def count_nice_pairs(nums)
  h = {}
  nums.each_with_index do |item, index|
    a = item
    b = item.to_s.reverse.to_i
    if h.has_key?(a - b)
      h[a - b] += 1
    else
      h[a - b] = 1
    end
  end
  total = 0
  h.each_pair do |key, value|
    total += value * (value - 1) / 2
  end
  total % (10 ** 9 + 7)
end
