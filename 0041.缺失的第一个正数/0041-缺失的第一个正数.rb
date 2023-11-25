# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  nums.delete_if { |item| item <= 0 }
  if nums.empty?
    return 1
  end
  unless nums.empty?
    nums.sort!
    nums.uniq.each_with_index do |item, index|
      if item != index + 1
        return index + 1
      end
    end
    nums.uniq.last + 1
  end
end
