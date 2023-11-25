class Solution

=begin
    :type radius: Float
    :type x_center: Float
    :type y_center: Float
=end
  def initialize(radius, x_center, y_center)
    @radius = radius
    @x = x_center
    @y = y_center
  end

=begin
    :rtype: Float[]
=end
  def rand_point()
    while true
      xc = Random.rand(-@radius..@radius)
      yc = Random.rand(-@radius..@radius)
      if xc * xc + yc * yc <= @radius * @radius
        return [xc + @x, yc + @y]
      end
    end
  end
end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(radius, x_center, y_center)
# param_1 = obj.rand_point()
