class KthLargest

=begin
    :type k: Integer
    :type nums: Integer[]
=end
  def initialize(k, nums)
    @k = k
    @nums = nums.sort
  end

=begin
    :type val: Integer
    :rtype: Integer
=end
  def add(val)
    m = @nums.bsearch_index { |item| item > val }
    if m == nil
      @nums.push(val)
    else
      @nums.insert(m, val)
    end
    l = @nums.length
    return @nums[l - @k]
  end
end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)
