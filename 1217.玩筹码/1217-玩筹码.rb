# @param {Integer[]} position
# @return {Integer}
def min_cost_to_move_chips(position)
  flag_odd = 0
  flag_even = 0
  for i in 0...position.length
    if position[i].odd?
      flag_odd += 1
    else
      flag_even += 1
    end
  end
  return [flag_odd, flag_even].min
end
