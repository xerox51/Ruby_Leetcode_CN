class MyCalendarThree
  def initialize()
    @tree = {}
    @lazy = {}
  end

=begin
    :type start_time: Integer
    :type end_time: Integer
    :rtype: Integer
=end
  def book(start_time, end_time)
    update(start_time, end_time - 1, 0, 10 ** 9, 1)
    return @tree[1]
  end

  def update(start, ending, l, r, node)
    if start > r || ending < l
      return
    elsif start <= l && r <= ending
      if @tree[node] == nil
        @tree[node] = 1
      else
        @tree[node] += 1
      end
      if @lazy[node] == nil
        @lazy[node] = 1
      else
        @lazy[node] += 1
      end
    else
      left_node = node * 2
      right_node = node * 2 + 1
      mid = (l + r) >> 1
      update(start, ending, l, mid, left_node)
      update(start, ending, mid + 1, r, right_node)
      if @tree[node] == nil
        @tree[node] = 0
      end
      if @lazy[node] == nil
        @lazy[node] = 0
      end
      if @tree[left_node] == nil
        @tree[left_node] = 0
      end
      if @tree[right_node] == nil
        @tree[right_node] = 0
      end
      @tree[node] = @lazy[node] + [@tree[left_node], @tree[right_node]].max
    end
  end
end

# Your MyCalendarThree object will be instantiated and called as such:
# obj = MyCalendarThree.new()
# param_1 = obj.book(start_time, end_time)
