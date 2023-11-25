# @param {Integer} main_tank
# @param {Integer} additional_tank
# @return {Integer}
def distance_traveled(main_tank, additional_tank)
  ans = 0
  while main_tank > 0 and additional_tank >= 0
    if main_tank >= 5 and additional_tank > 0
      main_tank -= 5
      ans += 5 * 10
      additional_tank -= 1
      main_tank += 1
    elsif main_tank >= 5 and additional_tank == 0
      ans += main_tank * 10
      main_tank = 0
    else
      ans += main_tank * 10
      main_tank = 0
    end
  end
  ans
end
