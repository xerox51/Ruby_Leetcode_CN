# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
  box_types.sort_by! { |element| element[1] }
  box_types.reverse!
  total = 0
  num = 0
  if box_types[0][0] > truck_size
    return truck_size * box_types[0][1]
  end
  for i in 0...box_types.length
    num += box_types[i][0]
    total += box_types[i][0] * box_types[i][1]
    if num > truck_size
      total = total - (num - truck_size) * box_types[i][1]
      break
    end
  end
  return total
end
