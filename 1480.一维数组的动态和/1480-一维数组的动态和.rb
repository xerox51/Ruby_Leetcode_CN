# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  ans = []
  c = counter
  nums.each do |item|
    t = c.call(item)
    ans.push(t)
  end
  ans
end

def counter
  total = 0
  proc { |x| x = 0 unless x; total += x }
end
