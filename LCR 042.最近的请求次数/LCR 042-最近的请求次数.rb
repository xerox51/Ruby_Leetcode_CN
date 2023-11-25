class RecentCounter
  def initialize()
    @num = []
  end

=begin
    :type t: Integer
    :rtype: Integer
=end
  def ping(t)
    @num.push(t)
    n = @num.bsearch_index { |item| item >= @num[-1] - 3000 }
    return @num.length - n
  end
end

# Your RecentCounter object will be instantiated and called as such:
# obj = RecentCounter.new()
# param_1 = obj.ping(t)
