# @param {Integer[][]} array
# @return {Integer[]}
def spiral_array(array)
  if array.empty? or array[0].empty?
    return []
  end
  rows, columns = array.length, array[0].length
  order = []
  left, right, top, bottom = 0, columns - 1, 0, rows - 1
  while left <= right and top <= bottom
    for column in left..right
      order.push(array[top][column])
    end
    for row in top + 1..bottom
      order.push(array[row][right])
    end
    if left < right and top < bottom
      (right - 1).downto(left + 1) do |column|
        order.push(array[bottom][column])
      end
      (bottom).downto(top + 1) do |row|
        order.push(array[row][left])
      end
    end
    left, right, top, bottom = left + 1, right - 1, top + 1, bottom - 1
  end
  order
end
