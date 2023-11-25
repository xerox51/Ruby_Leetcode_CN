# @param {Integer[]} nums
# @return {Integer}
def count_beautiful_pairs(nums)
  ans = 0
  nums.each_with_index do |item, index|
    im = item.to_s[0].to_i
    nums.each_with_index do |it, idx|
      i = it.to_s[-1].to_i
      if im.gcd(i) == 1 and index < idx
        ans += 1
      end
    end
  end
  ans
end
