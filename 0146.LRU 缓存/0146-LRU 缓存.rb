class LRUCache

=begin
    :type capacity: Integer
=end
  def initialize(capacity)
    @cap = Hash.new
    @h = Hash.new
    @cnt = 0
    @n = 0
    @capacity = capacity
  end

=begin
    :type key: Integer
    :rtype: Integer
=end
  def get(key)
    @cnt += 1
    if @cap.has_key?(key)
      @h[key] = @cnt
      return @cap[key]
    else
      return -1
    end
  end

=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
  def put(key, value)
    @cnt += 1
    if @cap.has_key?(key) and @n <= @capacity
      @cap[key] = value
      @h[key] = @cnt
    elsif (not @cap.has_key?(key)) and @n >= 0 and @n < @capacity
      @cap[key] = value
      @h[key] = @cnt
      @n += 1
    elsif @n == @capacity and (not @cap.has_key?(key))
      k = @h.key(@h.values.min)
      @cap.delete(k)
      @h.delete(k)
      @cap[key] = value
      @h[key] = @cnt
    end
  end
end

# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache.new(capacity)
# param_1 = obj.get(key)
# obj.put(key, value)
