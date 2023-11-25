class MyCalendar
  def initialize()
    @calendar = []
  end

=begin
    :type start: Integer
    :type end: Integer
    :rtype: Boolean
=end
  def book(start, ending)
    for item in @calendar
      if item[0] < ending and start < item[1]
        return false
      end
    end
    @calendar.push([start, ending])
    return true
  end
end

# Your MyCalendar object will be instantiated and called as such:
# obj = MyCalendar.new()
# param_1 = obj.book(start, end)
