# @param {Integer[]} nums
# @return {Integer}
def find_maximum_xor(nums)
  high_bit = 30
  x = 0
  high_bit.downto(0) do |i|
    seen = {}
    for num in nums
      seen[num >> i] = 1
    end
    x_next = x * 2 + 1
    found = false
    for num in nums
      if seen.include?(x_next ^ (num >> i))
        found = true
        break
      end
    end
    if found
      x = x_next
    else
      x = x_next - 1
    end
  end
  x
end
