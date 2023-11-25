class MovingAverage

=begin
    Initialize your data structure here.
    :type size: Integer
=end
  def initialize(size)
    @n = size
    @arr = []
  end

=begin
    :type val: Integer
    :rtype: Float
=end
  def next(val)
    @arr.push(val)
    if @arr.length < @n
      return @arr.sum / @arr.length.to_f
    else
      return @arr[-@n, @n].sum / @n.to_f
    end
  end
end

# Your MovingAverage object will be instantiated and called as such:
# obj = MovingAverage.new(size)
# param_1 = obj.next(val)
