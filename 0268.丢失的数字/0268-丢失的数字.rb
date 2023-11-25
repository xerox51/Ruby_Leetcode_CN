# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  nums.sort!
  n = 0
  nums.each_with_index do |item, index|
    if item != index
      return index
    end
  end
  nums.length
end
