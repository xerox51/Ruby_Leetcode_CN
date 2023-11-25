class NumArray
  attr_accessor :n
  attr_accessor :seg
=begin
    :type nums: Integer[]
=end
  def initialize(nums)
    @n = nums.length
    self.n = @n
    self.seg = Array.new(@n * 4, 0)
    self.build(nums, 0, 0, @n - 1)
  end

  def build(nums, node, s, e)
    if s == e
      self.seg[node] = nums[s]
      return
    end
    m = s + (e - s) / 2
    self.build(nums, node * 2 + 1, s, m)
    self.build(nums, node * 2 + 2, m + 1, e)
    self.seg[node] = self.seg[node * 2 + 1] + self.seg[node * 2 + 2]
  end

  def change(index, val, node, s, e)
    if s == e
      self.seg[node] = val
      return
    end
    m = s + (e - s) / 2
    if index <= m
      self.change(index, val, node * 2 + 1, s, m)
    else
      self.change(index, val, node * 2 + 2, m + 1, e)
    end
    self.seg[node] = self.seg[node * 2 + 1] + self.seg[node * 2 + 2]
  end

  def range(left, right, node, s, e)
    if left == s && right == e
      return self.seg[node]
    end
    m = s + (e - s) / 2
    if right <= m
      return self.range(left, right, node * 2 + 1, s, m)
    end
    if left > m
      return self.range(left, right, node * 2 + 2, m + 1, e)
    end
    return self.range(left, m, node * 2 + 1, s, m) + self.range(m + 1, right, node * 2 + 2, m + 1, e)
  end

=begin
    :type index: Integer
    :type val: Integer
    :rtype: Void
=end
  def update(index, val)
    return self.change(index, val, 0, 0, self.n - 1)
  end

=begin
    :type left: Integer
    :type right: Integer
    :rtype: Integer
=end
  def sum_range(left, right)
    return self.range(left, right, 0, 0, self.n - 1)
  end
end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# obj.update(index, val)
# param_2 = obj.sum_range(left, right)
