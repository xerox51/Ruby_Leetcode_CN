class TripleInOne

=begin
    :type stack_size: Integer
=end
  def initialize(stack_size)
    @num = Array.new(3) { Array.new() }
    @stack_size = stack_size
  end

=begin
    :type stack_num: Integer
    :type value: Integer
    :rtype: Void
=end
  def push(stack_num, value)
    if @num[stack_num].length < @stack_size
      @num[stack_num].push(value)
    end
  end

=begin
    :type stack_num: Integer
    :rtype: Integer
=end
  def pop(stack_num)
    if @num[stack_num].length == 0
      return -1
    end
    @num[stack_num].pop
  end

=begin
    :type stack_num: Integer
    :rtype: Integer
=end
  def peek(stack_num)
    if @num[stack_num].length == 0
      return -1
    else
      return @num[stack_num][-1]
    end
  end

=begin
    :type stack_num: Integer
    :rtype: Boolean
=end
  def is_empty(stack_num)
    @num[stack_num].length == 0
  end
end

# Your TripleInOne object will be instantiated and called as such:
# obj = TripleInOne.new(stack_size)
# obj.push(stack_num, value)
# param_2 = obj.pop(stack_num)
# param_3 = obj.peek(stack_num)
# param_4 = obj.is_empty(stack_num)
