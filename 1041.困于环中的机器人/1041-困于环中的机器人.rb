# @param {String} instructions
# @return {Boolean}
def is_robot_bounded(instructions)
  direction = { "N" => { "L" => "W", "R" => "E" },
               "S" => { "L" => "E", "R" => "W" },
               "E" => { "L" => "N", "R" => "S" },
               "W" => { "L" => "S", "R" => "N" } }
  flag = "N"
  start = [0, 0]
  for i in 0...instructions.length
    if instructions[i] == "G" and flag == "N"
      start[1] += 1
    elsif instructions[i] != "G"
      flag = direction[flag][instructions[i]]
    elsif instructions[i] == "G" and flag == "S"
      start[1] -= 1
    elsif instructions[i] == "G" and flag == "W"
      start[0] -= 1
    elsif instructions[i] == "G" and flag == "E"
      start[0] += 1
    end
  end
  if start != [0, 0] and flag == "N"
    return false
  else
    return true
  end
end
