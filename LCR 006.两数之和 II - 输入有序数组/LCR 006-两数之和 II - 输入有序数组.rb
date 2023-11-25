# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  h = {}
  numbers.each_with_index do |item, index|
    if h.has_key?(item)
      h[item].push(index)
    else
      h[item] = [index]
    end
  end
  numbers.each do |item|
    if h.has_key?(target - item)
      if target - item == item
        return h[item]
      else
        return [h[item][0], h[target - item][0]]
      end
    end
  end
end
