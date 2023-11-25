# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
  total = []
  operations.each do |item|
    if item != "C" and item != "D" and item != "+"
      total.push(item.to_i)
    elsif item == "C"
      total.pop
    elsif item == "D"
      total.push(total[-1] * 2)
    else
      total.push(total[-1] + total[-2])
    end
  end
  total.sum
end
