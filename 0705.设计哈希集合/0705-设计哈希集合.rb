class MyHashSet
  def initialize()
    @set = {}
  end

=begin
    :type key: Integer
    :rtype: Void
=end
  def add(key)
    unless @set.has_key?(key)
      @set[key] = key
    end
  end

=begin
    :type key: Integer
    :rtype: Void
=end
  def remove(key)
    if @set.has_key?(key)
      @set.delete(key)
    end
  end

=begin
    :type key: Integer
    :rtype: Boolean
=end
  def contains(key)
    @set.has_key?(key)
  end
end

# Your MyHashSet object will be instantiated and called as such:
# obj = MyHashSet.new()
# obj.add(key)
# obj.remove(key)
# param_3 = obj.contains(key)
