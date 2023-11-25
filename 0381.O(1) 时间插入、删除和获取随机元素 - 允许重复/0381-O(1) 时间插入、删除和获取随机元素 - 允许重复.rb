class RandomizedCollection
  def initialize()
    @h = []
  end

=begin
    :type val: Integer
    :rtype: Boolean
=end
  def insert(val)
    if @h.include?(val)
      @h.push(val)
      return false
    else
      @h.push(val)
      return true
    end
  end

=begin
    :type val: Integer
    :rtype: Boolean
=end
  def remove(val)
    if @h.include?(val)
      @h.delete_at(@h.index(val))
      return true
    else
      return false
    end
  end

=begin
    :rtype: Integer
=end
  def get_random()
    @h.sample
  end
end

# Your RandomizedCollection object will be instantiated and called as such:
# obj = RandomizedCollection.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()
