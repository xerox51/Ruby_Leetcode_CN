# @param {Integer[]} nums
# @return {Integer}
def max_score(nums)
  nums.sort!.reverse!
  ans = 0
  total = 0
  nums.each_with_index do |item, index|
    if index == 0 and item == 0
      return 0
      break
    elsif item >= 0
      total += item
      ans += 1
    elsif item < 0
      total += item
      if total <= 0
        break
      else
        ans += 1
      end
    end
  end
  ans
end
