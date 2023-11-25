# @param {Integer[]} nums
# @return {Integer}
def best_rotation(nums)
  a = nums.length
  b = Array.new(a, 0)
  nums.each_with_index do |item, index|
    low = (index + 1) % a
    high = (index - item + a + 1) % a
    b[low] += 1
    b[high] -= 1
    if low >= high
      b[0] += 1
    end
  end

  score, maxScore, idx = 0, 0, 0
  b.each_with_index do |item, index|
    score += item
    if score > maxScore
      maxScore, idx = score, index
    end
  end
  return idx
end
