# @param {Integer[]} nums
# @return {Integer[]}
def separate_digits(nums)
  ans = []
  nums.each do |item|
    tmp = item.to_s.each_char.to_a
    tmp.each do |it|
      ans.push(it.to_i)
    end
  end
  ans
end
