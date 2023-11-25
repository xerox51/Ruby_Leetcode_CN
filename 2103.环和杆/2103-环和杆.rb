# @param {String} rings
# @return {Integer}
def count_points(rings)
  answer = []
  nums = []
  (1..rings.length - 1).step(2) do |i|
    answer.push(rings[i - 1, 2])
    nums.push(rings[i])
  end
  counts = Array.new(nums.uniq.length, 0)
  nums.uniq.each_with_index do |item, index|
    answer.uniq.each do |s|
      if s.end_with?(item)
        counts[index] += 1
      end
    end
  end
  fuck = counts.select { |item| item == 3 }
  fuck.length
end
