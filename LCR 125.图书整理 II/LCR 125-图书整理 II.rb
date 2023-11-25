class CQueue
  def initialize()
    @num = []
  end

=begin
    :type value: Integer
    :rtype: Void
=end
  def append_tail(value)
    @num.push(value)
  end

=begin
    :rtype: Integer
=end
  def delete_head()
    if @num.length == 0
      return -1
    else
      return @num.shift
    end
  end
end

# Your CQueue object will be instantiated and called as such:
# obj = CQueue.new()
# obj.append_tail(value)
# param_2 = obj.delete_head()
