class ParkingSystem

=begin
    :type big: Integer
    :type medium: Integer
    :type small: Integer
=end
  def initialize(big, medium, small)
    @big = big
    @medium = medium
    @small = small
  end

=begin
    :type car_type: Integer
    :rtype: Boolean
=end
  def add_car(car_type)
    if car_type == 1 and @big > 0
      @big -= 1
      return true
    end
    if car_type == 1 and @big == 0
      return false
    end
    if car_type == 2 and @medium > 0
      @medium -= 1
      return true
    end
    if car_type == 2 and @medium == 0
      return false
    end
    if car_type == 3 and @small > 0
      @small -= 1
      return true
    end
    if car_type == 3 and @small == 0
      return false
    end
  end
end

# Your ParkingSystem object will be instantiated and called as such:
# obj = ParkingSystem.new(big, medium, small)
# param_1 = obj.add_car(car_type)
