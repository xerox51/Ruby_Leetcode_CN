class RandomizedSet
  def initialize()
    @set = {}
  end

=begin
    :type val: Integer
    :rtype: Boolean
=end
  def insert(val)
    unless @set.has_key?(val)
      @set[val] = val
      true
    else
      false
    end
  end

=begin
    :type val: Integer
    :rtype: Boolean
=end
  def remove(val)
    if @set.has_key?(val)
      @set.delete(val)
      true
    else
      false
    end
  end

=begin
    :rtype: Integer
=end
  def get_random()
    @set.keys.sample
  end
end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()
