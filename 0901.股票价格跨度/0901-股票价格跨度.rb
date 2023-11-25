class StockSpanner
  def initialize()
    @stack = [[-1, 1.0 / 0.0]]
    @idx = -1
  end

=begin
    :type price: Integer
    :rtype: Integer
=end
  def next(price)
    @idx += 1
    while price >= @stack[-1][1]
      @stack.pop
    end
    @stack.push([@idx, price])
    @idx - @stack[-2][0]
  end
end

# Your StockSpanner object will be instantiated and called as such:
# obj = StockSpanner.new()
# param_1 = obj.next(price)
