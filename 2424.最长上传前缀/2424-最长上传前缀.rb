class LUPrefix

=begin
    :type n: Integer
=end
  def initialize(n)
    @x = 1
    @s = {}
  end

=begin
    :type video: Integer
    :rtype: Void
=end
  def upload(video)
    @s[video] = true
  end

=begin
    :rtype: Integer
=end
  def longest()
    while @s.has_key?(@x)
      @x += 1
    end
    @x - 1
  end
end

# Your LUPrefix object will be instantiated and called as such:
# obj = LUPrefix.new(n)
# obj.upload(video)
# param_2 = obj.longest()
