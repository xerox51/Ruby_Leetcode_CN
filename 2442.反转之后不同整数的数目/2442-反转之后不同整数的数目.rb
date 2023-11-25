# @param {Integer[]} nums
# @return {Integer}
def count_distinct_integers(nums)
  ans = []
  for item in nums
    ans.push(reversenum(item))
  end
  ans.concat(nums).uniq.length
end

def reversenum(num)
  s = num.to_s.reverse.to_i
  s
end
