class Solution

=begin
    :type nums: Integer[]
=end
  def initialize(nums)
    @nums = nums
  end

=begin
    :type target: Integer
    :rtype: Integer
=end
  def pick(target)
    a = []
    @nums.each_index do |index|
      if @nums[index] == target
        a.push(index)
      end
    end
    a.sample
  end
end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(nums)
# param_1 = obj.pick(target)
