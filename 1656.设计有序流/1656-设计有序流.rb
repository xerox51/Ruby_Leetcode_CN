class OrderedStream

=begin
    :type n: Integer
=end
  def initialize(n)
    @h = Array.new(n, "")
    @id = 1
  end

=begin
    :type id_key: Integer
    :type value: String
    :rtype: String[]
=end
  def insert(id_key, value)
    @h[id_key - 1] = value
    if @id == id_key
      ans = []
      for i in id_key - 1...@h.length
        if @h[i].length == value.length
          @id += 1
          ans.push(@h[i])
        else
          break
        end
      end
      return ans
    else
      return []
    end
  end
end

# Your OrderedStream object will be instantiated and called as such:
# obj = OrderedStream.new(n)
# param_1 = obj.insert(id_key, value)
