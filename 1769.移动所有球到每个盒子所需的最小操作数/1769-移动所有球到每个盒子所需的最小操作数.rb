# @param {String} boxes
# @return {Integer[]}
def min_operations(boxes)
  left, right, operations = boxes[0].to_i, 0, 0
  for i in 1...boxes.length
    if boxes[i] == "1"
      right += 1
      operations += i
    end
  end
  res = [operations]
  for i in 1...boxes.length
    operations += left - right
    if boxes[i] == "1"
      left += 1
      right -= 1
    end
    res.push(operations)
  end
  res
end
