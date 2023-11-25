# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
  count = 0
  operations.each do |item|
    if item.eql?("X++") or item.eql?("++X")
      count += 1
    else
      count -= 1
    end
  end
  count
end
