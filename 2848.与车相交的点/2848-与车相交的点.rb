# @param {Integer[][]} nums
# @return {Integer}
def number_of_points(nums)
  h = {}
  nums.each do |item|
    item[0].upto(item[1]) do |it|
      h[it] = 1
    end
  end
  h.length
end
