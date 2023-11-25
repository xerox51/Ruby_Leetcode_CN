# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
  ans = []
  nums.permutation(nums.length) do |element|
    ans.push(element)
  end
  ans.uniq
end
